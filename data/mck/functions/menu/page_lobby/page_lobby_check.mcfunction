scoreboard players set clear mck_temp 0
scoreboard players set sel mck_temp 0


execute unless data storage menu inv[{Slot:18b}] run scoreboard players set sel mck_temp 1
execute unless data storage menu inv[{Slot:19b}] run scoreboard players set sel mck_temp 2
execute unless data storage menu inv[{Slot:20b}] run scoreboard players set sel mck_temp 3
execute unless data storage menu inv[{Slot:21b}] run scoreboard players set sel mck_temp 4
execute unless data storage menu inv[{Slot:22b}] run scoreboard players set sel mck_temp 5
execute unless data storage menu inv[{Slot:23b}] run scoreboard players set sel mck_temp 6
execute unless data storage menu inv[{Slot:27b}] run scoreboard players set sel mck_temp 7
execute unless data storage menu inv[{Slot:28b}] run scoreboard players set sel mck_temp 8
execute unless data storage menu inv[{Slot:29b}] run scoreboard players set sel mck_temp 9
execute unless data storage menu inv[{Slot:30b}] run scoreboard players set sel mck_temp 10
execute unless data storage menu inv[{Slot:31b}] run scoreboard players set sel mck_temp 11
execute unless data storage menu inv[{Slot:32b}] run scoreboard players set sel mck_temp 12


execute if score sel mck_temp matches 1.. run scoreboard players set clear mck_temp 1
execute if score sel mck_temp matches 1.. unless data entity @s Inventory[{Slot:35b}].tag.id_list run scoreboard players set sel mck_temp 0
execute if score sel mck_temp matches 1.. run data modify storage temp out.players set from entity @s Inventory[{Slot:35b}].tag.id_list
execute if score sel mck_temp matches 1.. store result score temp mck_temp run data get storage temp out.players
execute if score sel mck_temp matches 1.. if score sel mck_temp <= temp mck_temp run function mck:menu/page_lobby/get_player


execute if score @s mck_lobby_type matches 0 if score @s mck_spec_lobby = @s mck_lobby if score @s mck_permission matches 2.. unless data storage menu inv[{Slot:24b}] run scoreboard players set clear mck_temp 2
execute if score @s mck_lobby_type matches 0 if score @s mck_spec_lobby = @s mck_lobby if score @s mck_permission matches 2.. unless data storage menu inv[{Slot:24b}] run scoreboard players set @s mck_lobby_cmd 5
execute if score @s mck_spec_lobby = @s mck_lobby if score @s mck_permission matches 2.. unless data storage menu inv[{Slot:25b}] run scoreboard players set clear mck_temp 2
execute if score @s mck_spec_lobby = @s mck_lobby if score @s mck_permission matches 2.. unless data storage menu inv[{Slot:25b}] run scoreboard players set @s mck_lobby_cmd 1
execute if score @s mck_spec_lobby = @s mck_lobby if score @s mck_permission matches 2.. unless data storage menu inv[{Slot:26b}] run scoreboard players set clear mck_temp 2
execute if score @s mck_spec_lobby = @s mck_lobby if score @s mck_permission matches 2.. unless data storage menu inv[{Slot:26b}] run scoreboard players set @s mck_lobby_cmd 2

execute if score @s mck_spec_lobby = @s mck_lobby if score @s mck_permission matches 1.. unless data storage menu inv[{Slot:33b}] run scoreboard players set clear mck_temp 2
execute if score @s mck_spec_lobby = @s mck_lobby if score @s mck_permission matches 1.. unless data storage menu inv[{Slot:33b}] run scoreboard players set @s mck_lobby_cmd 4
execute if score @s mck_spec_lobby = @s mck_lobby if score @s mck_permission matches 1.. unless data storage menu inv[{Slot:34b}] run scoreboard players set clear mck_temp 2
execute if score @s mck_spec_lobby = @s mck_lobby if score @s mck_permission matches 1.. unless data storage menu inv[{Slot:34b}] run scoreboard players set @s mck_lobby_cmd 3

execute if score clear mck_temp matches 1.. run playsound ui.button.click master @s[scores={mck_setting1=1}] ~ ~ ~ 0.3 0.9
execute unless data storage menu inv[{Slot:35b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{Slot:35b}] run scoreboard players set @s mck_page 0
execute if score @s mck_spec_lobby = @s mck_lobby unless data storage menu inv[{Slot:35b}] run function mck:menu/page_lobby/leave

execute if score clear mck_temp matches 1.. run function mck:menu/draw

execute unless data storage menu inv[{Slot:13b}] unless score @s mck_menudelay matches 1.. run function mck:menu/draw

execute if score clear mck_temp matches 2 run scoreboard players set @s mck_menudelay 21