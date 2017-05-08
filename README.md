# CMPE 273 Project - Team 8

# Slack API Chatbot

Description: 

Using Slack channel as GUI for users, this chatbot uses Machine Learning models to answer user's questions and answers accurately. 

# Advantages

# Machine Learning
	The chatbot uses Machine Learning algorithms in scikit library for classifying the questions.
# JSpeech Grammar Format
	The chatbot was trained by a model with questions were generated to JSpeech Grammar Format (JSGF).

	The JSpeech Grammar Format (JSGF) is a platform-independent, vendor-independent textual representation of grammars for use in speech recognition. Grammars are used by speech recognizers to determine what the recognizer should listen for, and so describe the utterances a user may say. JSGF adopts the style and conventions of the JavaTM Programming Language in addition to use of traditional grammar notations.
# Conversational Bot
	 Remembers the class, and user need not to specify course name each time
# Support of more than one greensheet
	User can train with more than greensheet. Currently 2 greensheets were added. They are CMPE27301 and CMPE272-2
# Voice integration with MAC
	Users can use their MAC inbuilt microphone to ask chatbot as voice input. The server listens to microphone and processes in the server, replies back to slack channel.
# Scalable
	The python server is deployed on EC2 and it is highly scalable. The database used was mySQL on Amazon RDS and is capable of serving millions of requests concurrently.

	


# Required Libraries 

sly pymysql slackclient numpy scipy scikit-learn pattern

# Installation All above libraries with pip

pip install sly pymysql slackclient numpy scipy scikit-learn pattern

or 

# install python requirements (after cloning the git repo)
pip install -r requirements.txt


# set the following environments properly
The code uses database configuration from environment variables, make sure to add them
export DB_HOST='localhost'
export DB_USER=root
export DB_PASS=''

# Set the slack bot id and token
export SLACK_BOT_TOKEN='xoxb-175807218647-HL9jcD2OAzBxgj5G0QBrwcfX'
export BOT_ID='U55PR6EK1'


# Run the scripts to create database and push the required greensheet data to database
# mysql -h $DB_HOST -u $DB_USER < scripts/sql/scripts.sql
# mysql -h $DB_HOST -u $DB_USER < scripts/sql/insert.sql


# Run the chatbot server

python scripts/server/jarvis.py

Now, the chatbot is active and add the slack bot to any slack channel. To invoke the chatbot, use @jarvis (or @{chatbot_name} for a diffrent chatbot) to ask any question. The chatbot is completelt conversational, meaning it remembers the course name for all next set of classes. Use reset keyword to reset the previous conversation.