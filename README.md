CMPE 273 Project

Slack API Chatbot

Command to run javis:

# set the following environments properly
export DB_HOST='localhost'
export DB_USER=root
export DB_PASS=''
export SLACK_BOT_TOKEN='xoxb-175807218647-HL9jcD2OAzBxgj5G0QBrwcfX'
export BOT_ID='U55PR6EK1'

# install python requirements
pip install -r requirements.txt

# mysql -h $DB_HOST -u $DB_USER < scripts/sql/scripts.sql
# mysql -h $DB_HOST -u $DB_USER < scripts/sql/insert.sql


python scripts/server/jarvis.py
