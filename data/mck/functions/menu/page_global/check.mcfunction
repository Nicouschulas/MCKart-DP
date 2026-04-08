scoreboard players set clear mck_temp 0

execute unless data storage menu inv[{Slot:18b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{Slot:18b}] run scoreboard players set @s mck_page 5

execute unless data storage menu inv[{Slot:35b}] run scoreboard players set clear mck_temp 2


execute unless data storage menu inv[{Slot:27b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{Slot:27b}] if score @s mck_player_track_menu matches 2 run scoreboard players set @s mck_player_track_menu 1
execute unless data storage menu inv[{Slot:27b}] if score @s mck_player_track_menu matches 3.. run scoreboard players remove @s mck_player_track_menu 2

execute unless data storage menu inv[{Slot:27b}] run scoreboard players operation in mck_db_bit = @s mck_player_track_menu
execute unless data storage menu inv[{Slot:27b}] run function mck:database/player_find
execute unless data storage menu inv[{Slot:27b}] if score @s mck_player_track_menu matches 2.. unless data storage databases output.data run scoreboard players remove @s mck_player_track_menu 1
execute unless data storage menu inv[{Slot:27b}] run scoreboard players operation in mck_db_bit = @s mck_player_track_menu
execute unless data storage menu inv[{Slot:27b}] run function mck:database/player_find
execute unless data storage menu inv[{Slot:27b}] if score @s mck_player_track_menu matches 2.. unless data storage databases output.data run scoreboard players remove @s mck_player_track_menu 1



scoreboard players operation temp mck_temp = id mck_id
scoreboard players remove temp mck_temp 9
execute unless data storage menu inv[{Slot:33b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{Slot:33b}] if score @s mck_player_track_menu < temp mck_temp run scoreboard players add @s mck_player_track_menu 2

execute unless data storage menu inv[{Slot:33b}] run scoreboard players operation in mck_db_bit = @s mck_player_track_menu
execute unless data storage menu inv[{Slot:33b}] run function mck:database/player_find
execute unless data storage menu inv[{Slot:33b}] if score @s mck_player_track_menu < temp mck_temp unless data storage databases output.data run scoreboard players add @s mck_player_track_menu 1
execute unless data storage menu inv[{Slot:33b}] run scoreboard players operation in mck_db_bit = @s mck_player_track_menu
execute unless data storage menu inv[{Slot:33b}] run function mck:database/player_find
execute unless data storage menu inv[{Slot:33b}] if score @s mck_player_track_menu < temp mck_temp unless data storage databases output.data run scoreboard players add @s mck_player_track_menu 1



scoreboard players set temp mck_temp -1
execute unless data storage menu inv[{Slot:19b}] store result score temp mck_temp run data get entity @s EnderItems[0].tag.global_player_ids[0]
execute unless data storage menu inv[{Slot:28b}] store result score temp mck_temp run data get entity @s EnderItems[0].tag.global_player_ids[1]
execute unless data storage menu inv[{Slot:20b}] store result score temp mck_temp run data get entity @s EnderItems[0].tag.global_player_ids[2]
execute unless data storage menu inv[{Slot:29b}] store result score temp mck_temp run data get entity @s EnderItems[0].tag.global_player_ids[3]
execute unless data storage menu inv[{Slot:21b}] store result score temp mck_temp run data get entity @s EnderItems[0].tag.global_player_ids[4]
execute unless data storage menu inv[{Slot:30b}] store result score temp mck_temp run data get entity @s EnderItems[0].tag.global_player_ids[5]
execute unless data storage menu inv[{Slot:22b}] store result score temp mck_temp run data get entity @s EnderItems[0].tag.global_player_ids[6]
execute unless data storage menu inv[{Slot:31b}] store result score temp mck_temp run data get entity @s EnderItems[0].tag.global_player_ids[7]
execute unless data storage menu inv[{Slot:23b}] store result score temp mck_temp run data get entity @s EnderItems[0].tag.global_player_ids[8]
execute unless data storage menu inv[{Slot:32b}] store result score temp mck_temp run data get entity @s EnderItems[0].tag.global_player_ids[9]
execute if score temp mck_temp matches 1.. run execute if score @s mck_challenge_level matches 2 if score @s mck_quest1 matches 0.. run scoreboard players add @s mck_quest1 1
execute if score temp mck_temp matches 1.. run execute if score @s mck_challenge_level matches 2 if score @s mck_quest1 matches 0.. run function mck:player/challenges/reached
execute if score temp mck_temp matches 1.. run scoreboard players operation @s mck_player_menu = temp mck_temp
execute if score temp mck_temp matches 1.. run scoreboard players set clear mck_temp 1
execute if score temp mck_temp matches 0 run scoreboard players set clear mck_temp 2
execute if score temp mck_temp matches 1.. run scoreboard players operation @s mck_previous_page = @s mck_page
execute if score temp mck_temp matches 1.. run scoreboard players set @s mck_player_track_menu 0
execute if score temp mck_temp matches 1.. run scoreboard players set @s mck_page -8


execute unless data storage menu inv[{Slot:-106b}] run scoreboard players set clear mck_temp 2
execute unless data storage menu inv[{Slot:-106b}] run tellraw @s [{"text":"[","color":"gray","bold":true},{"translate":"system","color":"gold","bold":false},{"text":"] "},{"translate":"menu.global.warning","color":"#FF837A","bold":false}]
execute unless data storage menu inv[{Slot:-106b}] run playsound minecraft:block.note_block.didgeridoo master @s[scores={mck_setting1=1}] ~ ~ ~ 10 0.4


execute if score clear mck_temp matches 1 run playsound ui.button.click master @s[scores={mck_setting1=1}] ~ ~ ~ 0.3 0.9
execute if score clear mck_temp matches 1.. run function mck:menu/draw



execute unless data storage menu inv[{Slot:13b}] unless score @s mck_menudelay matches 1.. run function mck:menu/draw