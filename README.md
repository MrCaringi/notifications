# Notifications

Bash Scripts for notifications via Telegram. These scripts allow you to send text messages and files to Telegram chats or groups, with optional support for targeting specific threads within a group.

---

## Table of Contents
- [TELEGRAM NOTIFICATION SCRIPT](#telegram-notification-script)
  - [How to use?](#how-to-use)
- [Before using](#before-using)
  - [Configuration content](#configuration-content)
- [How to update the scripts](#how-to-update-the-scripts)
  - [Update `telegram-message.sh`](#update-telegram-messagesh)
  - [Update `telegram-message-file.sh`](#update-telegram-message-filesh)

## TELEGRAM NOTIFICATION SCRIPT

### How to use?

The formula is: `<script> <title> <line 1> <line 2>`

For example:

```bash
bash /home/jfc/scripts/telegram-message.sh "Borg Backup" "Repo: ${REPO}" "Starting backup"
```

# Before using

Create the `telegram_notification.config` file and indicate it in the script telegram-message.sh (line 22), and fill it with two lines
This should be located in the same folder as the scripts.

## Configuration content
APIKEY	(BOT API Key)
CHATID	(From Group or Chat)
THREAD_ID (Optional, telegram `message_thread_id` value)
```
APIKEY=API-TOKEN
CHATID=ID with "-" symbol included
THREAD_ID=123
```

## How to update the scripts
### Update `telegram-message.sh`
``` Shell
wget -O telegram-message.sh https://raw.githubusercontent.com/username/repository/branch/telegram-message.sh && chmod +x telegram-message.sh
```
### Update `telegram-message-file.sh`
``` Shell
wget -O telegram-message-file.sh https://raw.githubusercontent.com/username/repository/branch/telegram-message-file.sh && chmod +x telegram-message-file.sh
```