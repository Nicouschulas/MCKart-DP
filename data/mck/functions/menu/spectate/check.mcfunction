function mck:menu/page_play/get_selected

function mck:menu/spectate/check_status



execute unless score selected mck_temp matches 0 run playsound minecraft:ui.button.click master @s[scores={mck_setting1=1}] ~ ~ ~ 0.6 1.4
execute unless score selected mck_temp matches 0 run scoreboard players operation @s mck_spec_lobby = selected mck_temp
execute unless score selected mck_temp matches 0 if score @s mck_lobby_type matches 1 run scoreboard players operation @s mck_spec_lobby += normal mck_temp
execute unless score selected mck_temp matches 0 run scoreboard players set @s mck_page -5
execute unless score selected mck_temp matches 0 run scoreboard players reset @s mck_spectate
execute unless score selected mck_temp matches 0 run function mck:menu/draw

execute unless data storage menu inv[{Slot:13b}] run function mck:menu/draw