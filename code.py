#!/usr/bin/python

import cv2
import os
import datetime
import smtplib
from email.mime.text import MIMEText
from email.mime.image import MIMEImage
from email.mime.multipart import MIMEMultipart

time = str(datetime.datetime.now())

check, frame= cv2.VideoCapture(0).read()
#print (check)


cv2.imwrite(filename='image.jpg',img=frame)
cv2.VideoCapture(0).release()
cv2.destroyAllWindows()

with open('image.jpg','rb') as f:
        image_data = f.read()


data = MIMEMultipart()
data['Subject'] = MailSubject
data['From'] = "PC <"+Frommail+">"
data['To'] = Tomail
data.attach(MIMEText("An Alert at "+time))
data.attach(MIMEImage(image_data,name='image.jpg'))

server= smtplib.SMTP("smtp.gmail.com",587)
server.starttls()
server.login(Frommail,Password)
server.sendmail(Frommail,Tomail,data.as_string())
server.quit()

#@sadhvik
