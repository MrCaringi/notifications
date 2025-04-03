#!/usr/bin/env bash

###############################
#  TELEGRAM NOTIFICATION SCRIPT
#
#	Parametros
#	1 Titulo
#	2 Linea 1
#	3 Linea 2
#
#	Last Modified
#		2021-07-29  Enable tags (#) for Hostname
#       2025-04-03  Add support for THREAD_ID from config
#
###############################

## credenciales del bot
#	El Archivo "telegram_notification.config" debe contener estas variables
#
#	APIKEY	del bot
#	CHATID	del grupo o usuario
#   THREAD_ID del tópico (opcional)

. /home/jfc/scripts/telegram_notification.config

# Verifica si THREAD_ID está definido en el archivo de configuración
THREAD_ID_PARAM=""
if [ ! -z "$THREAD_ID" ]; then
  THREAD_ID_PARAM="--data message_thread_id=$THREAD_ID"
fi

curl -s \
--data parse_mode=HTML \
--data chat_id=$CHATID \
$THREAD_ID_PARAM \
--data text="<b>${1}</b>%0A      <i>from <b>#`hostname`</b></i>%0A%0A${2}%0A${3}" \
"https://api.telegram.org/bot$APIKEY/sendMessage"

exit 0
