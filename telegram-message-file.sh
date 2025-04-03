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
#		2025-04-03  Add support for THREAD_ID from config
#		2025-04-04  Update script to use curl for sending messages
#
###############################

## credenciales del bot
#	El Archivo debe contener estas variables
#
#	APIKEY	del bot
#	CHATID	del grupo o usuario
#   THREAD_ID del tópico (opcional)

. /home/jfc/scripts/telegram_notification.config

hostname=`hostname`

# Verifica si THREAD_ID está definido en el archivo de configuración
THREAD_ID_PARAM=""
if [ ! -z "$THREAD_ID" ]; then
  THREAD_ID_PARAM="-F message_thread_id=$THREAD_ID"
fi

curl -v -4 -F \
  "chat_id=$CHATID" \
  $THREAD_ID_PARAM \
  -F document=@${3} \
  -F caption="${1}"$'\n'"        from: #${hostname}"$'\n'"${2}" \
  https://api.telegram.org/bot$APIKEY/sendDocument

exit 0
