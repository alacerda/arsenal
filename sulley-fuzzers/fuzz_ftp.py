#
# Alacerda's ** Sulley ** FTP Fuzzer file
# RFC 959 - https://tools.ietf.org/html/rfc959
# 
# 2017/08/04
#
# LICENSE GPLv3
#

import os
import sys

TARGET_IP = "192.168.25.80"
PROCESS_NAME="coresrvr.exe"
START_PROCESS_FILE_PATH="c:\\myfile\\coresrvr.exe"

def environ_error():
    print "[ERROR] - Sulley directory not defined in PYTHONPATH environment var. Fix this before continue!"
    print ""
    print "\t*** Please issue the command: export PYTHONPATH=<your_sulley_directory_here>"
    print ""
    exit(1)

try:
    if "sulley" not in os.environ['PYTHONPATH'].lower():
        environ_error()
except:
    environ_error()

from sulley import *

lista_comandos=["ABOR","PASV","ACCT","CWD","RMD","MKD","CDUP","SMNT","REIN","QUIT","SITE","HELP","STAT"]
lista_comandos.extend(["MODE","TYPE","STRU","RETR","STOR","STOU","APPE","RNFR","RNTO","DELE","PWD","LIST","NLIST","SYST"])

s_initialize("user-authentication")
s_static("USER")
s_delim(" ", fuzzable=True)
s_string("anonymous")
s_static("\r\n")

s_initialize("password-authentication")
s_initialize("pass")
s_static("PASS")
s_delim(" ",fuzzable=True)
s_string("y7ft123!")
s_static("\r\n")

s_initialize("general-commands")
s_group("comandos", lista_comandos)
s_block_start("conversation", group="comandos")
s_delim(" ", fuzzable=True)
s_string("init_arg")
s_static("\r\n")
s_block_end()

# PORT command is too different from the others
# so it is separated in here. Read RFC 4.1.2
s_initialize("port-command")
if s_block_start("port-command"):
    s_delim(" ", fuzzable=True)
    s_static("PORT")
    s_delim(" ",fuzzable=True)
    s_string("10")
    s_delim(",")
    s_string("10")
    s_delim(",")
    s_string("10")
    s_delim(",")
    s_string("10")
    s_delim(",")
    s_string("80")
    s_delim(",")
    s_string("80")
s_block_end()

s_initialize("alloOneArg")
s_static("ALLO")
s_delim(" ",fuzzable=True)
s_dword(0)

s_initialize("alloTwoArgs")
s_static("ALLO")
s_delim(" ",fuzzable=True)
s_dword(0)
s_delim(" ",fuzzable=True)
s_string("R")
s_delim(" ",fuzzable=True)
s_dword(0)

# Pre-send Block
## Nice information: pre_send function takes 
## place right after the thre-way handshake
def recebe_banner(sock):
    try:
        sock.recv(1024)
    except error:
        print "The server didn't send anything - So rude!"

# session block
## parameters
mysession = sessions.session(
    session_filename = "coreftp_ftpd_session",
    sleep_time = 0.5,
    timeout = 5,
    crash_threshold = 4)

mysession.pre_send = recebe_banner
mysession.connect(s_get("user-authentication"))
mysession.connect(s_get("user-authentication"), s_get("password-authentication") )
mysession.connect(s_get("password-authentication") ,s_get("general-commands"))
mysession.connect(s_get("password-authentication") ,s_get("port-command"))
mysession.connect(s_get("password-authentication") ,s_get("port-command"))
mysession.connect(s_get("password-authentication") ,s_get("alloOneArg"))
mysession.connect(s_get("password-authentication") ,s_get("alloTwoArgs"))

# clear screen
sys.stdout.write("\x1b[2J\x1b[H")

# Prints some useful information
print "Sulley FTP Fuzzer - By Alacerda (alancordeiro at gmail)"
print "\tYour Target address: %s" %TARGET_IP
print "\tYour Target Application: %s" %PROCESS_NAME
print "\tNumber of mutations: ", mysession.num_mutations()

# Ask before proceed
sys.stdout.write("\tDo you wanna proceed? [y/N]: ")
sys.stdout.flush()

resp = raw_input()
if (resp.upper() != "Y"):
    exit(1)

## target
target = sessions.target(TARGET_IP, 21)
target.procmon = pedrpc.client(TARGET_IP,26002)
target.netmon = pedrpc.client("127.0.0.1",26001)

target.procmon_options = {
    "proc_name" : TARGET_IP,
    "stop_commands" : ['wic process where (name="' + PROCESS_NAME + '") call terminate'],
    "start_commands" : [START_PROCESS_FILE_PATH],
    }

## add target to session
mysession.add_target(target)

# Draw a graph
fh = open("ftp_session.udg", "w+")
fh.write(mysession.render_graph_udraw())
fh.close()

# Start fuzzing
mysession.fuzz()
