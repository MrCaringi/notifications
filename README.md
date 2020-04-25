# notifications
Bash Scripts for notifications



# How to use?

The formula is: <script> <title> <line 1> <line 2>
  
For example:

bash /home/jfc/scripts/telegram-message.sh "Borg Backup" "Repo: ${REPO}" "Starting backup"
  


# Before using

Create the .config file and indicate it in the script telegram-message.sh (line 22), and fill it with two lines

APIKEY	(BOT API Key)

CHATID	(From Group or Chat)

. /home/jfc/scripts/telegram_notification.config
