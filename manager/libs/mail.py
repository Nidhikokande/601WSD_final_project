from flask_mail import Message
from manager.ext import mail
from flask import render_template

def send_email(to, subject, template):

    msg = Message(  subject,
                    recipients=[to],
                    html=template,
                    sender= 'nlk8@njit.edu')
    mail.send(msg)