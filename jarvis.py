#!/usr/bin/env python3

import speech_recognition as sr
import json

import os
import time
from slackclient import SlackClient

channel = None
flag = 0
voice_text = None


# starterbot's ID as an environment variable
BOT_ID = os.environ.get("BOT_ID")

# constants
AT_BOT = "<@" + BOT_ID + ">"
EXAMPLE_COMMAND = "do"

# instantiate Slack & Twilio clients
slack_client = SlackClient(os.environ.get('SLACK_BOT_TOKEN'))


def handle_command(command, channel):
    """
        Receives commands directed at the bot and determines if they
        are valid commands. If so, then acts on the commands. If not,
        returns back what it needs for clarification.
    """
    response = "Not sure what you mean. Use the *" + EXAMPLE_COMMAND + \
               "* command with numbers, delimited by spaces."
    if command.startswith(EXAMPLE_COMMAND):
        response = "Sure...write some more code then I can do that!"
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
    channel = None
    if slack_client.rtm_connect():
        print("StarterBot connected and running!")
        while True:
            if channel is not None and flag == 0:
                r = sr.Recognizer()
                with sr.Microphone() as source:
                    print("Say something!")
                    response1 = "Say something!"
                    slack_client.api_call("chat.postMessage", channel=channel,
                                          text=response1, as_user=True)
                    audio = r.listen(source)

                    if r.recognize_google(audio):
                        flag = 1
                        voice_text = r.recognize_google(audio)
                        response2 = "you said " + voice_text
                        slack_client.api_call("chat.postMessage", channel=channel,text=response2, as_user=True)

            if flag==0 and channel is None:
                val_comm, val_cha = parse_slack_output(slack_client.rtm_read())
                command = val_comm
                channel = val_cha

            if flag==1:
                command = voice_text
                flag = 0

            if command:
                print "command "
                print command
                print "channel"
                print channel
                handle_command(command, channel)
            time.sleep(READ_WEBSOCKET_DELAY)
    else:
        print("Connection failed. Invalid Slack token or bot ID?")
