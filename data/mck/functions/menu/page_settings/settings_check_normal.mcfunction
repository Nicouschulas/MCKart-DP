scoreboard players set clear mck_temp 0

execute unless data storage menu inv[{Slot:18b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{Slot:18b}] run function mck:menu/page_settings/setting1
execute unless data storage menu inv[{Slot:20b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{Slot:20b}] run function mck:menu/page_settings/setting2
execute unless data storage menu inv[{Slot:24b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{Slot:24b}] run function mck:menu/page_settings/setting3
execute unless data storage menu inv[{Slot:29b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{Slot:29b}] run function mck:menu/page_settings/setting4

execute unless data storage menu inv[{Slot:27b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{Slot:27b}] run function mck:menu/page_settings/setting5
execute unless data storage menu inv[{Slot:33b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{Slot:33b}] run function mck:menu/page_settings/setting6
execute unless data storage menu inv[{Slot:22b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{Slot:22b}] run function mck:menu/page_settings/setting7
execute unless data storage menu inv[{Slot:31b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{Slot:31b}] run function mck:menu/page_settings/setting8
execute unless data storage menu inv[{Slot:35b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{Slot:35b}] run function mck:menu/page_settings/setting9
execute if score @s mck_challenge_level matches 3.. run execute unless data storage menu inv[{Slot:26b}] run scoreboard players set clear mck_temp 1
execute if score @s mck_challenge_level matches 3.. run execute unless data storage menu inv[{Slot:26b}] run function mck:menu/page_settings/setting10

execute if score clear mck_temp matches 1 run playsound ui.button.click master @s[scores={mck_setting1=1}] ~ ~ ~ 0.3 0.9
execute if score clear mck_temp matches 1 run function mck:menu/draw

execute unless data storage menu inv[{Slot:13b}] run function mck:menu/draw