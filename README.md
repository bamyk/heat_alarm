# heat_alarm
DHT11 heat alarm sent from Arduino via a Linux email server.

Required hardware: Arduino UNO, DHT11 temperature sensor, a PC with Linux OS.

      Arduino:
<dht.h> library needs to be added to your Arduino IDE, DHT11 sensor should be hooked up (lots of manuals on the web).

Add the Arduino_temp_code.c code from the repo to your Arduino IDE, the temperature data will then be fed to your Linux OS via the USB port (usually /dev/ttyUSB0).

     Linux:
$ stty igncr 9600 -F /dev/ttyUSB0          # The stty command sets the parameters and speed of the COM port   
                                           # -F   - open and use the specified DEVICE instead of stdin
                                           # igncr   - carriage return characters ('\r') are discarded on input

$ cat /dev/ttyUSB0  >> /home/user/inputfile       # saves output from Arduino line by line into a file

$ sudo apt mailutils   - will install mailutils + postfix MTA (mail and mailx commands)   # this command is valid for Ubuntu and other Debian based distros     # choose the internet option when asked to configure postfix

Now run the Evaluate_Arduino_output.sh script
