scoreboard players set clear mck_temp 0

execute unless data storage menu inv[{"Slot":22b}] run scoreboard players set clear mck_temp 1

execute unless data storage menu inv[{"Slot":29b}] run scoreboard players set clear mck_temp 2
execute unless data storage menu inv[{"Slot":29b}] if score @s mck_player_menu matches 1 run function mck:menu/page_-7/leave_race
execute unless data storage menu inv[{"Slot":29b}] if score @s mck_player_menu matches 2 run function mck:coin_multiplier/go
execute unless data storage menu inv[{"Slot":29b}] if score @s mck_player_menu matches 2 run scoreboard players operation @s mck_page = @s mck_previous_page
execute unless data storage menu inv[{"Slot":29b}] if score @s mck_player_menu matches 3 run playsound minecraft:entity.ender_dragon.death master @s ~ ~ ~ 0.6 1
execute unless data storage menu inv[{"Slot":29b}] if score @s mck_player_menu matches 3 run function mck:player/hard_reset

execute unless data storage menu inv[{"Slot":31b}] if score @s mck_player_menu matches 3 run scoreboard players set clear mck_temp 1

execute unless data storage menu inv[{"Slot":33b}] run scoreboard players set clear mck_temp 2
execute unless data storage menu inv[{"Slot":33b}] run scoreboard players operation @s mck_page = @s mck_previous_page


execute if score clear mck_temp matches 2.. run playsound ui.button.click master @s[scores={mck_setting1=1}] ~ ~ ~ 0.3 0.9
execute if score clear mck_temp matches 1.. run function mck:menu/draw


execute unless data storage menu inv[{"Slot":13b}] unless score @s mck_menudelay matches 1.. run function mck:menu/draw