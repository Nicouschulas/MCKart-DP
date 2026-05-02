scoreboard players set clear mck_temp 0

execute unless data storage menu inv[{"Slot":18,"id":"minecraft:item","count":1,"components":{}}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{"Slot":18,"id":"minecraft:item","count":1,"components":{}}] run scoreboard players set @s mck_page 5

execute unless data storage menu inv[{"Slot":35,"id":"minecraft:item","count":1,"components":{}}] run scoreboard players set clear mck_temp 2


execute unless data storage menu inv[{"Slot":27,"id":"minecraft:item","count":1,"components":{}}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{"Slot":27,"id":"minecraft:item","count":1,"components":{}}] if score @s mck_player_track_menu matches 2 run scoreboard players set @s mck_player_track_menu 1
execute unless data storage menu inv[{"Slot":27,"id":"minecraft:item","count":1,"components":{}}] if score @s mck_player_track_menu matches 3.. run scoreboard players remove @s mck_player_track_menu 2

execute unless data storage menu inv[{"Slot":27,"id":"minecraft:item","count":1,"components":{}}] run scoreboard players operation in mck_db_bit = @s mck_player_track_menu
execute unless data storage menu inv[{"Slot":27,"id":"minecraft:item","count":1,"components":{}}] run function mck:database/player_find
execute unless data storage menu inv[{"Slot":27,"id":"minecraft:item","count":1,"components":{}}] if score @s mck_player_track_menu matches 2.. unless data storage databases output.data run scoreboard players remove @s mck_player_track_menu 1
execute unless data storage menu inv[{"Slot":27,"id":"minecraft:item","count":1,"components":{}}] run scoreboard players operation in mck_db_bit = @s mck_player_track_menu
execute unless data storage menu inv[{"Slot":27,"id":"minecraft:item","count":1,"components":{}}] run function mck:database/player_find
execute unless data storage menu inv[{"Slot":27,"id":"minecraft:item","count":1,"components":{}}] if score @s mck_player_track_menu matches 2.. unless data storage databases output.data run scoreboard players remove @s mck_player_track_menu 1



scoreboard players operation temp mck_temp = id mck_id
scoreboard players remove temp mck_temp 9
execute unless data storage menu inv[{"Slot":33,"id":"minecraft:item","count":1,"components":{}}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{"Slot":33,"id":"minecraft:item","count":1,"components":{}}] if score @s mck_player_track_menu < temp mck_temp run scoreboard players add @s mck_player_track_menu 2

execute unless data storage menu inv[{"Slot":33,"id":"minecraft:item","count":1,"components":{}}] run scoreboard players operation in mck_db_bit = @s mck_player_track_menu
execute unless data storage menu inv[{"Slot":33,"id":"minecraft:item","count":1,"components":{}}] run function mck:database/player_find
execute unless data storage menu inv[{"Slot":33,"id":"minecraft:item","count":1,"components":{}}] if score @s mck_player_track_menu < temp mck_temp unless data storage databases output.data run scoreboard players add @s mck_player_track_menu 1
execute unless data storage menu inv[{"Slot":33,"id":"minecraft:item","count":1,"components":{}}] run scoreboard players operation in mck_db_bit = @s mck_player_track_menu
execute unless data storage menu inv[{"Slot":33,"id":"minecraft:item","count":1,"components":{}}] run function mck:database/player_find
execute unless data storage menu inv[{"Slot":33,"id":"minecraft:item","count":1,"components":{}}] if score @s mck_player_track_menu < temp mck_temp unless data storage databases output.data run scoreboard players add @s mck_player_track_menu 1



scoreboard players set temp mck_temp -1
execute unless data storage menu inv[{"Slot":19,"id":"minecraft:item","count":1,"components":{}}] store result score temp mck_temp run data get entity @s EnderItems[0].tag.global_player_ids[0]
execute unless data storage menu inv[{"Slot":28,"id":"minecraft:item","count":1,"components":{}}] store result score temp mck_temp run data get entity @s EnderItems[0].tag.global_player_ids[1]
execute unless data storage menu inv[{"Slot":20,"id":"minecraft:item","count":1,"components":{}}] store result score temp mck_temp run data get entity @s EnderItems[0].tag.global_player_ids[2]
execute unless data storage menu inv[{"Slot":29,"id":"minecraft:item","count":1,"components":{}}] store result score temp mck_temp run data get entity @s EnderItems[0].tag.global_player_ids[3]
execute unless data storage menu inv[{"Slot":21,"id":"minecraft:item","count":1,"components":{}}] store result score temp mck_temp run data get entity @s EnderItems[0].tag.global_player_ids[4]
execute unless data storage menu inv[{"Slot":30,"id":"minecraft:item","count":1,"components":{}}] store result score temp mck_temp run data get entity @s EnderItems[0].tag.global_player_ids[5]
execute unless data storage menu inv[{"Slot":22,"id":"minecraft:item","count":1,"components":{}}] store result score temp mck_temp run data get entity @s EnderItems[0].tag.global_player_ids[6]
execute unless data storage menu inv[{"Slot":31,"id":"minecraft:item","count":1,"components":{}}] store result score temp mck_temp run data get entity @s EnderItems[0].tag.global_player_ids[7]
execute unless data storage menu inv[{"Slot":23,"id":"minecraft:item","count":1,"components":{}}] store result score temp mck_temp run data get entity @s EnderItems[0].tag.global_player_ids[8]
execute unless data storage menu inv[{"Slot":32,"id":"minecraft:item","count":1,"components":{}}] store result score temp mck_temp run data get entity @s EnderItems[0].tag.global_player_ids[9]
execute if score temp mck_temp matches 1.. run execute if score @s mck_challenge_level matches 2 if score @s mck_quest1 matches 0.. run scoreboard players add @s mck_quest1 1
execute if score temp mck_temp matches 1.. run execute if score @s mck_challenge_level matches 2 if score @s mck_quest1 matches 0.. run function mck:player/challenges/reached
execute if score temp mck_temp matches 1.. run scoreboard players operation @s mck_player_menu = temp mck_temp
execute if score temp mck_temp matches 1.. run scoreboard players set clear mck_temp 1
execute if score temp mck_temp matches 0 run scoreboard players set clear mck_temp 2
execute if score temp mck_temp matches 1.. run scoreboard players operation @s mck_previous_page = @s mck_page
execute if score temp mck_temp matches 1.. run scoreboard players set @s mck_player_track_menu 0
execute if score temp mck_temp matches 1.. run scoreboard players set @s mck_page -8


execute unless data storage menu inv[{"Slot":-106,"id":"minecraft:item","count":1,"components":{}}] run scoreboard players set clear mck_temp 2
execute unless data storage menu inv[{"Slot":-106,"id":"minecraft:item","count":1,"components":{}}] run tellraw @s [{"text":"[","color":"gray","bold":true},{"translate":"system","color":"gold","bold":false},{"text":"] "},{"translate":"menu.global.warning","color":"#FF837A","bold":false}]
execute unless data storage menu inv[{"Slot":-106,"id":"minecraft:item","count":1,"components":{}}] run playsound minecraft:block.note_block.didgeridoo master @s[scores={mck_setting1=1}] ~ ~ ~ 10 0.4


execute if score clear mck_temp matches 1 run playsound ui.button.click master @s[scores={mck_setting1=1}] ~ ~ ~ 0.3 0.9
execute if score clear mck_temp matches 1.. run function mck:menu/draw



execute unless data storage menu inv[{"Slot":13,"id":"minecraft:item","count":1,"components":{}}] unless score @s mck_menudelay matches 1.. run function mck:menu/draw