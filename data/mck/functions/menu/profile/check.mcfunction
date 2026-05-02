scoreboard players set clear mck_temp 0

execute unless data storage menu inv[{"Slot":18b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{"Slot":18b}] run scoreboard players operation @s mck_page = @s mck_previous_page
execute unless data storage menu inv[{"Slot":18b}] if score @s mck_page matches -9 run scoreboard players set @s mck_player_track_menu 1

execute unless data storage menu inv[{"Slot":22b}] run scoreboard players set clear mck_temp 2
execute unless data storage menu inv[{"Slot":23b}] run scoreboard players set clear mck_temp 2


execute if score @s mck_permission matches 3.. unless data storage menu inv[{"Slot":26b}] run scoreboard players operation id mck_temp = @s mck_player_menu
execute if score @s mck_permission matches 3.. unless data storage menu inv[{"Slot":26b}] as @a if score @s mck_id = id mck_temp run function mck:player/reset
execute if score @s mck_permission matches 3.. unless data storage menu inv[{"Slot":26b}] as @a if score @s mck_id = id mck_temp run function mck:player/resource_loaded
execute if score @s mck_permission matches 3.. unless data storage menu inv[{"Slot":26b}] run scoreboard players set clear mck_temp 1


execute unless data storage menu inv[{"Slot":27b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{"Slot":27b}] if score @s mck_player_track_menu matches 0 run scoreboard players operation in mck_db_bit = @s mck_player_menu
execute unless data storage menu inv[{"Slot":27b}] if score @s mck_player_track_menu matches 0 run function mck:database/player_find
execute unless data storage menu inv[{"Slot":27b}] if score @s mck_player_track_menu matches 0 store result score @s mck_player_track_menu run data get storage databases output.data.track_stats
execute unless data storage menu inv[{"Slot":27b}] if score @s mck_player_track_menu matches 1.. run scoreboard players remove @s mck_player_track_menu 1


execute unless data storage menu inv[{"Slot":28b}] run scoreboard players set clear mck_temp 2
execute unless data storage menu inv[{"Slot":29b}] run scoreboard players set clear mck_temp 2
execute unless data storage menu inv[{"Slot":30b}] run scoreboard players set clear mck_temp 2
execute unless data storage menu inv[{"Slot":31b}] run scoreboard players set clear mck_temp 2
execute unless data storage menu inv[{"Slot":32b}] run scoreboard players set clear mck_temp 2
execute unless data storage menu inv[{"Slot":33b}] run scoreboard players set clear mck_temp 2
execute unless data storage menu inv[{"Slot":34b}] run scoreboard players set clear mck_temp 2


execute unless data storage menu inv[{"Slot":35b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{"Slot":35b}] run scoreboard players add @s mck_player_track_menu 1


execute if score clear mck_temp matches 1 run playsound ui.button.click master @s[scores={mck_setting1=1}] ~ ~ ~ 0.3 0.9
execute if score clear mck_temp matches 1.. run function mck:menu/draw


execute unless data storage menu inv[{"Slot":13b}] run function mck:menu/draw