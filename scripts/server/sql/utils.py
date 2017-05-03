import re
import pymysql.cursors

def extract_digits(text):
    return str(filter(str.isdigit, text))

def get_mysql_connection():
    connection = pymysql.connect(host='localhost',
                             user='root',
                             password='',
                             db='slackbot',
                             cursorclass=pymysql.cursors.DictCursor)
    return connection

def get_sequence_number(text):
    if 'one' in text or 'first' in text or '1' in text:
        return 1
    elif 'two' in text or 'second' in text or '2' in text:
        return 2
    elif 'three' in text or 'third' in text or '3' in text:
        return 3
    elif 'four' in text or 'fourth' in text or '4' in text:
        return 4
    elif 'five' in text or 'fifth' in text or '5' in text:
        return 5
    elif 'six' in text or 'sixth' in text or '6' in text:
        return 6
    elif 'seven' in text or 'seventh' in text or '7' in text:
        return 7
    elif 'eight' in text or 'eighth' in text or '8' in text:
        return 8
    elif 'nine' in text or 'ninth' in text or '9' in text:
        return 9
    else:
        return -1