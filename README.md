[[!Build status](https://img.shields.io/static/v1?label=&message=%20&color=grey&style=plastic&logo=gnubash)](https://www.gnu.org/software/bash/) [[!Build status](https://img.shields.io/static/v1?label=&message=%20&color=grey&style=plastic&logo=python)](https://www.python.org) [[!Build status](https://img.shields.io/static/v1?label=&message=%20&color=grey&style=plastic&logo=opencv)](https://docs.opencv.org/3.4/d2/de6/tutorial_py_setup_in_ubuntu.html) [[!Build status](https://img.shields.io/static/v1?label=Download&message=%20&color=blue&style=plastic&logo=github)](https://github.com/sadhvikbathini/capturescript/archive/refs/heads/main.zip)

#Captures a photo at login with webcam and sends it through mail

##./
To Copy the files to your computer,
Just run the script ```./run.sh -i```

If you want to capture a photo just after you successfully logged in,
then run the runafter.sh script also ```./runafter.sh -i```

###Required:
[[!Build status](https://img.shields.io/static/v1?label=&message=%20&color=grey&style=plastic&logo=gnubash)](https://www.linux.org) For Linux,

Python3,
OpenCV,  ```sudo apt install python3-opencv```
crontab  ```sudo apt install cron```
Make sure you have these libaries in Python3, ```smtplib``` library,```os``` library

Use Gmail, make sure you use 16 digit App Password for Email Password->
https://support.google.com/accounts/answer/185833
