scoreboard players operation old mck_temp = @s mck_lobby_type

function mck:menu/page_play/get_selected



execute unless score selected mck_temp matches 0 if score @s mck_lobby matches 1.. run function mck:menu/page_play/check_if_players

execute unless score selected mck_temp matches 0 run scoreboard players operation @s mck_spec_lobby = selected mck_temp
execute unless score selected mck_temp matches 0 if score @s mck_lobby_type matches 1 run scoreboard players operation @s mck_spec_lobby += normal mck_temp
execute unless score selected mck_temp matches 0 if score @s mck_lobby matches 1.. run scoreboard players operation @s mck_lobby_type = old mck_temp

execute unless score selected mck_temp matches 0 unless score @s mck_lobby matches 1.. unless score @s mck_scene matches 1..17 run function mck:player/lobby/join

execute unless score selected mck_temp matches 0 run playsound minecraft:ui.button.click master @s[scores={mck_setting1=1}] ~ ~ ~ 0.6 1.4
execute unless score selected mck_temp matches 0 run scoreboard players set @s mck_page -1
execute unless score selected mck_temp matches 0 unless score @s mck_menudelay matches 1.. run function mck:menu/draw


execute unless data storage menu inv[{Slot:13b}] unless score @s mck_menudelay matches 1.. run function mck:menu/draw