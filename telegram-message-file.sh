#!/usr/bin/env bash

###############################
#  TELEGRAM NOTIFICATION SCRIPT for FILES
#
#	Parametros
#	1 Titulo
#	2 Linea 1
#	3 Ruta Archivo
#   
#   Ejemplo
#   bash /home/jfc/scripts/telegram-message-file.sh "Borg Backup Log" "Repo: #${TITLE}" "/ruta/al/archivo"
#   bash telegram-message-file.sh Titulo Linea1 test.log
#
#	Last Modified
#		2020-07-29  Creacion
#
###############################

## credenciales del bot
#	El Archivo debe contener estas variables
#
#	APIKEY	del bot
#	CHATID	del grupo o usuario

. /home/jfc/scripts/telegram_notification.config

hostname=`hostname`

curl -v -4 -F \
  "chat_id=$CHATID" \
  -F document=@${3} \
  -F caption="${1}"$'\n'"        from: #${hostname}"$'\n'"${2}" \
  https://api.telegram.org/bot$APIKEY/sendDocument

exit 0
