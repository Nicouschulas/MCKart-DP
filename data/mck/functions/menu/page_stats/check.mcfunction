scoreboard players set clear mck_temp 0

execute unless data storage menu inv[{Slot:20b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{Slot:20b}] run scoreboard players operation @s mck_previous_page = @s mck_page
execute unless data storage menu inv[{Slot:20b}] run scoreboard players set @s mck_page -8
execute unless data storage menu inv[{Slot:20b}] run scoreboard players set @s mck_player_track_menu 0
execute unless data storage menu inv[{Slot:20b}] run scoreboard players operation @s mck_player_menu = @s mck_id

execute unless data storage menu inv[{Slot:24b}] run scoreboard players set clear mck_temp 2
execute unless data storage menu inv[{Slot:24b}] run scoreboard players operation @s mck_previous_page = @s mck_page
execute unless data storage menu inv[{Slot:24b}] run scoreboard players set @s mck_page -9
execute unless data storage menu inv[{Slot:24b}] run scoreboard players set @s mck_player_track_menu 1

execute if score @s mck_permission matches 3.. unless data storage menu inv[{Slot:27b}] run scoreboard players set clear mck_temp 1
execute if score @s mck_permission matches 3.. unless data storage menu inv[{Slot:27b}] run scoreboard players set @s mck_page -99

execute unless data storage menu inv[{Slot:35b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{Slot:35b}] run scoreboard players set @s mck_player_menu 3
execute unless data storage menu inv[{Slot:35b}] run scoreboard players operation @s mck_previous_page = @s mck_page
execute unless data storage menu inv[{Slot:35b}] run scoreboard players set @s mck_page -7


execute unless data storage menu inv[{Slot:13b}] unless score @s mck_menudelay matches 1.. run function mck:menu/draw

execute if score clear mck_temp matches 1.. run playsound ui.button.click master @s[scores={mck_setting1=1}] ~ ~ ~ 0.3 0.9
execute if score clear mck_temp matches 1.. run function mck:menu/draw
execute if score clear mck_temp matches 2 run scoreboard players set @s mck_menudelay 10