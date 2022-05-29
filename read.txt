Captures a photo at login with webcam and sends it through mail

Captures a photo at login with webcam and sends it through mail

./
To Copy the files to your computer,
Just run the script ```./run.sh -i```

If you want to capture a photo just after you successfully logged in,
then run the runafter.sh script also ```./.runafter.sh -i```

Required:
For Linux,

Python3,
OpenCV,  ```sudo apt install python3-opencv```
Crontab  ```sudo apat install cron```
Make sure you have these libaries in Python3,
smtplib library
os library

Use Gmail, make sure you use 16 digit App Password for Email Password
https://support.google.com/accounts/answer/185833

help:
Usage: ./run.sh [OPTIONS]

Options
 -i           : Installs the script in your computer
 -r           : Removes the script from your computer
 --help or -h : Prints this.
You can run this script again and again,
if you want to change your e-mail or password

For example, ./run.sh -i: will install the script

