# -*- coding: utf-8 -*-
import os
import time
from slackclient import SlackClient

import nltk
#nltk.download()
import sklearn
from stemming.porter2 import stem
from nltk.corpus import stopwords
from sklearn.feature_extraction.text import CountVectorizer
import re, math
from collections import Counter


# starterbot's ID as an environment variable
BOT_ID = os.environ.get("BOT_ID")

# constants
AT_BOT = "<@" + BOT_ID + ">"
EXAMPLE_COMMAND = "do"

# instantiate Slack & Twilio clients
slack_client = SlackClient(os.environ.get('SLACK_BOT_TOKEN'))

"""
chatbot commands
"""

WORD = re.compile(r'\w+')

def convertToCosine(vec1, vec2):
     intersection = set(vec1.keys()) & set(vec2.keys())
     numerator = sum([vec1[x] * vec2[x] for x in intersection])

     sum1 = sum([vec1[x]**2 for x in vec1.keys()])
     sum2 = sum([vec2[x]**2 for x in vec2.keys()])
     denominator = math.sqrt(sum1) * math.sqrt(sum2)

     if not denominator:
        return 0.0
     else:
        return float(numerator) / denominator

def word2vec(text):
     words = WORD.findall(text)
     return Counter(words)

stop = set(stopwords.words('english'))

sentences = ['What is the college name'
, 'What is the department name'
, 'What is the class code'
, 'What is the class name'
, 'What is the class section number'
, 'What is the instructor name'
, 'What is the instructor’s office location'
, 'What is the instructor’s email id'
, 'What are the instructor’s office hours'
, 'Do I need to take appointment to meet instructor'
, 'What is the class time'
, 'On what day we have class'
, 'On what time we have class'
, 'How long is the class'
, 'Where is the classroom'
, 'What are the prerequisites'
, 'What is the course website'
, 'What is the course description'
, 'What are the text books for the class'
, 'What is the grading policy'
, 'What is the weightage for pop quizzes'
, 'What is the weightage for Labs'
, 'What is the weightage for Assignments'
, 'What is the weightage for Class Project'
, 'What is the weightage for Mid-term Exam'
, 'What is the weightage for Final Exam'
, 'What is the topic for first week 1'
, 'What is the topic for second week 2'
, 'What is the topic for third week 3'
, 'What is the topic for fourth week 4'
, 'What is the topic for fifth week 5'
, 'What is the topic for sixth week 6'
, 'What is the topic seventh for week 7'
, 'What is the topic for eigth week 8'
, 'What is the topic for ninth week 9'
, 'What is the topic for tenth week 10'
, 'When is Mid-term exam'
, 'Where is the mid-term exam being conducted'
, 'What is the topic for eleventh week 11'
, 'What is the topic for twelfth week 12'
, 'What is the topic for thriteenth week 13'
, 'What is the topic for fourteenth week 14'
, 'What is the topic for week 15'
, 'What is the topic for sixteenth week 16'
, 'What is the topic for seventeenth week 17'
, 'When is the final exam'
, 'Where is the final exam conducted'
, 'When is Lab1 due'
, 'When is Assignment1 due'
, 'When is Lab2 due'
, 'When is Assignment2 due'
, 'When is Lab3 due'
, 'When is Assignment3 due'
, 'When is Lab4 due'
, 'When are the project presentations' ]

answers =['San Jose State University'
 ,'College of Engineering'
,'CMPE 273'
,'Enterprise Distributed Systems'
,'Section 1'
,'Sithu Aung'
,'ENG 281'
,'Sithu.aung@sjsu.edu'
,'Wednesday 5:00pm-6:00pm (by Appointment Only)'
,'Yes'
,'Wednesday 6:00pm–8:45pm'
,'Wednesday'
,'6:00pm'
,'2hr 45min'
,'SH 100'
,'Strong in a OOP or functional programming language'
,'https://sjsu.instructure.com'
,'The objective of this course is to introduce you to the architecture principles, application protocols, Web Service API design and integration patterns for building distributed system.'
,'There is no text that really corresponds to the material and focus of this course. However, some recommended books for the class are: 1. Web Services, by Gustavo Alonso, Fabio Casati, Harumi Kuno and Vijay Machiraju (2003) 2. Enterprise Integration Patterns, by Gregor Hohpe and Bobby Woolf (2003) 3. Restful Web Services, by Leonard Richardson, Sam Ruby and David Hansson (2007)'
,'Grading is curved. Grading will be on Pop Quizzes, Labs, Assignments, Class Project, Mid-term Exam, Final Exam'
,'5%'
,'5%'
,'30%'
,'20%'
,'20%'
,'20%'
,'Distributed Systems Overview'
,'Integration Protocols'
,'Remote Procedural Calls'
,'RESTful Web Services'
,'RESTful Web Services'
,'Messaging'
,'Consistency Models'
,'Fault Tolerance (Replication)'
,'Spring Recess – NO CLASS'
,'Mid-term Exam'
,'4/5/2017'
,'Not decided yet (TBD)'
,'Fault Tolerance (Sharding)'
,'Fault Tolerance (Consensus)'
,'Performance'
,'Decentralized Applications'
,'Project Presentations'
,'No class'
,'Final Exam from 5:15 pm –7:30 pm'
,'5/24/2017	5:15 pm –7:30 pm'
,'Not decided yet (TBD)'
,'Week 3 (2/15)'
,'Week 6 (3/8)'
,'Week 8 (3/22)'
,'Week 9 (3/29)'
,'Week 11 (4/12)'
,'Week 13 (4/26)'
,'Week 15 (5/10)'
,'Week 15 (5/10)']

"""
chatbot commands above
"""


def handle_command(command, channel):
    """
        Receives commands directed at the bot and determines if they
        are valid commands. If so, then acts on the commands. If not,
        returns back what it needs for clarification.
    """
    """
    response = "Not sure what you mean. Use the *" + EXAMPLE_COMMAND + \
               "* command with numbers, delimited by spaces."
    """

    var = command

    print("you entered" + var)

    response = "you entered" + var

    input1=var
    inputTokens = nltk.word_tokenize(input1)
    finalInputToken =[]
    for token in inputTokens:
        if(token.lower() not in stop):
            print (token)
            finalInputToken.append(stem(token))
    print (finalInputToken)
    finalInput = ' '.join(str(x) for x in finalInputToken)
    print ("string", finalInput)
    finalInputVector = word2vec(finalInput)
    high = 0
    rightSentence = ''
    for sentence in sentences:
        tokens = nltk.word_tokenize(sentence)
        finalToken = []
        for token in tokens:
            if(token.lower() not in stop):
                #print (token)
                finalToken.append(stem(token))
        #also write special charcater removal
        print (finalToken)
        finalQuestionString = ' '.join(str(x) for x in finalToken)
        print ("Final Question String", finalQuestionString)
        finalQuestionVector =  word2vec(finalQuestionString)
        cosine = convertToCosine(finalInputVector, finalQuestionVector)
        if (cosine > high):
            high = cosine
            rightSentence = sentence
        print ('Cosine:', cosine)

    if(high == 0):
        print ("Sorry, I coudn't understand..please give a valid question")
        response = "Sorry, I coudn't understand..please give a valid question"

    print (high, " sentence: ", rightSentence, " index: ",sentences.index(rightSentence))
    print ("Answer is : ",answers[sentences.index(rightSentence)])
    response = answers[sentences.index(rightSentence)]

    slack_client.api_call("chat.postMessage", channel=channel,
                          text=response, as_user=True)


def parse_slack_output(slack_rtm_output):
    """
        The Slack Real Time Messaging API is an events firehose.
        this parsing function returns None unless a message is
        directed at the Bot, based on its ID.
    """
    output_list = slack_rtm_output
    if output_list and len(output_list) > 0:
        for output in output_list:
            if output and 'text' in output and AT_BOT in output['text']:
                # return text after the @ mention, whitespace removed
                return output['text'].split(AT_BOT)[1].strip().lower(), \
                       output['channel']
    return None, None


if __name__ == "__main__":
    READ_WEBSOCKET_DELAY = 1 # 1 second delay between reading from firehose
    if slack_client.rtm_connect():
        print("StarterBot connected and running!")
        while True:
            command, channel = parse_slack_output(slack_client.rtm_read())
            if command and channel:
                handle_command(command, channel)
            time.sleep(READ_WEBSOCKET_DELAY)
    else:
        print("Connection failed. Invalid Slack token or bot ID?")
