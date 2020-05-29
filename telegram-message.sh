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
#		2020-03-17
#
###############################

## credenciales del bot
#	El Archivo "telegram_notification.config" debe contener estas variables
#
#	APIKEY	del bot
#	CHATID	del grupo o usuario

. /home/jfc/scripts/telegram_notification.config

curl -s \
--data parse_mode=HTML \
--data chat_id=$CHATID \
--data text="<b>${1}</b>%0A      <i>from <b>`hostname`</b></i>%0A%0A${2}%0A${3}" \
"https://api.telegram.org/bot$APIKEY/sendMessage"

exit 0
