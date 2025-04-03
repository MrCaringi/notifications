# Notifications

Bash Scripts for notifications via Telegram. These scripts allow you to send text messages and files to Telegram chats or groups, with optional support for targeting specific threads within a group.

---

## TELEGRAM NOTIFICATION SCRIPT

### How to use?

The formula is: `<script> <title> <line 1> <line 2>`

For example:

```bash
bash /home/jfc/scripts/telegram-message.sh "Borg Backup" "Repo: ${REPO}" "Starting backup"
```

# Before using

Create the .config file and indicate it in the script telegram-message.sh (line 22), and fill it with two lines

APIKEY	(BOT API Key)

CHATID	(From Group or Chat)

. /home/jfc/scripts/telegram_notification.config

## How to update the scripts

### Update `telegram-message.sh`
``` Terminal
cd /path/to/the/script/location
wget -O telegram-message.sh https://raw.githubusercontent.com/username/repository/branch/telegram-message.sh
chmod +x telegram-message.sh
```
