#!/bin/bash
#You can run this script again and again, if you want to change your e-mail or password

if [[ $1 = '-r' ]]
then
sudo rm /bin/codeafter0.py
sudo rm /etc/profile.d/CaptureScript.sh

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

sudo cp code.py codeafter0.py
sed -i "24i Frommail = \"$frommail\"" codeafter0.py
sed -i "25i Password = \"$password\"" codeafter0.py
sed -i "26i Tomail = \"$tomail\"" codeafter0.py
sed -i "27i MailSubject = \" ---> ALERT FROM YOUR PC, AFTER YOU SUCESSFULLY LOGGED IN<--- \"" codeafter0.py
sudo mv codeafter0.py /bin/
sudo chmod +x CaptureScript.sh
sudo cp CaptureScript.sh /etc/profile.d/

else
echo '''Usage: ./runafter.sh [OPTIONS]

Options
 -i           : Installs the script in your computer
 -r           : Removes the script from your computer
 --help or -h : Prints this.

For example, ./runafter.sh -i: will install the script'''

fi
