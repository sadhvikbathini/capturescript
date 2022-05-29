#!/bin/bash
#You can run this script again and again, if you want to change your e-mail or password


if [[ $1 = '-r' ]]
then

sudo crontab -l >> f.txt
sed -i "/python3 \/bin\/code0.py/d" f.txt
sudo crontab f.txt
sudo rm f.txt
sudo rm /bin/code0.py

elif [[ $1 = '-i' ]]
then

echo "                           "
echo "        /▔▔▔▔▔▔▔▔▔▔▔▔▔▔\   "
echo "       /    |▔▔▔▔▔|     \  "
echo "       \    \ \▔/ /     /  "
echo "        \___|_|▔|_|____/   "
echo "                           "

read -p 'Enter Your Email [From ] : ' frommail
read -p 'Enter Your Email Password: ' password
read -p 'Enter Email [To ]: ' tomail

echo ""
echo -e 'Installing.... /'
sleep .5
echo -e '\033[A\rInstalling.... |'
sleep .5
echo -e '\033[A\rInstalling.... \'
sleep .5
echo -e '\033[A\rInstalling.... -'
sleep .5
echo -e "\033[A\r                     "

sudo cp code.py code0.py
sed -i "24i Frommail = \"$frommail\"" code0.py
sed -i "25i Password = \"$password\"" code0.py
sed -i "26i Tomail = \"$tomail\"" code0.py
sed -i "27i MailSubject = \" ---> ALERT FROM YOUR PC <--- \"" code0.py
sudo mv code0.py /bin/
sudo crontab -l >> tmpcrontab.txt
sudo echo "@reboot python3 /bin/code0.py &" >> tmpcrontab.txt
sudo uniq tmpcrontab.txt >> tmpcrontab1.txt
sudo rm tmpcrontab.txt
sudo crontab tmpcrontab1.txt
sudo rm tmpcrontab1.txt

else
echo '''Usage: ./run.sh [OPTIONS]

Options
 -i           : Installs the script in your computer
 -r           : Removes the script from your computer
 --help or -h : Prints this.
You can run this script again and again,
if you want to change your e-mail or password

For example, ./run.sh -i: will install the script'''

fi
