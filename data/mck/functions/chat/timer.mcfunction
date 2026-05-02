scoreboard players add chat_alert mck_timer 1

execute if score chat_alert mck_timer matches 12000 run scoreboard players add chat_alert_type mck_data 1
execute if score chat_alert mck_timer matches 12000 if score chat_alert_type mck_data matches 2.. run scoreboard players set chat_alert_type mck_data 0
execute if score chat_alert mck_timer matches 12000 if score chat_alert_type mck_data matches 0 run function mck:chat/about
execute if score chat_alert mck_timer matches 12000 if score chat_alert_type mck_data matches 1 run function mck:chat/tip

execute if score chat_alert mck_timer matches 12000 run scoreboard players set chat_alert mck_timer 0