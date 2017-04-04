#!/bin/bash
#
# upload android APK to slack channel
# arguments:
#   -c: slack channel you want the APK shared in, can be channel id or name, 
#       if name, make sure to include the "#" (i.e. #general)
#   -n: name of the APK being uploaded
#   -p: path to location of APK

# constants
DOMAIN="https://slack.com/api/files.upload"
TOKEN=$AMANDROID_SLACK_BOT_TOKEN

# defaults
DEFAULT_CHANNEL="#slackbot-testing"
# this assumes you are in the project directory and the main app module is 'app'
DEFAULT_RELATIVE_PATH="$PWD/app/build/outputs/apk/app-debug.apk"

# variables
CHANNEL=$DEFAULT_CHANNEL
FILE_NAME=""
FILE_PATH=$DEFAULT_RELATIVE_PATH

while getopts "c:n:p:" opt ; do
    case "$opt" in
        c) CHANNEL=$OPTARG;;
        n) FILE_NAME=$OPTARG;;
        p) FILE_PATH=$OPTARG;;
    esac
done

# check if we've got a file path
if [ -z "$FILE_PATH" ]; then 
  echo "🙅 Oops. Looks like you forgot to add a file path via '- p'. Go back
  and try again."
  exit 1
fi

# check if file name has .apk extension, if not, add one
# we do this because Slack is silly and if we don't add the .apk extension it
# will upload the apk as a zip file
FILE_NAME="${FILE_NAME%.apk}.apk"

# execute curl
curl -F file=@"$FILE_PATH" -F channels="$CHANNEL" -F filename="$FILE_NAME" -F token="$TOKEN" "$DOMAIN"
