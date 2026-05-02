scoreboard players operation @s mck_lobby = lobbyid mck_temp  
scoreboard players operation @s mck_id = lobbyraceid mck_temp  
scoreboard players operation @s mck_race = lobbyraceid mck_temp  
scoreboard players operation @s mck_setting1 = difficulty mck_setting1  
scoreboard players operation @s mck_track = track_id mck_temp  

scoreboard players set @s mck_timer 660  
scoreboard players set @s mck_lobby_status 1  
scoreboard players operation @s mck_players = botcount2 mck_temp  
scoreboard players operation @s mck_players += lobbyplayers mck_temp  
tag @s remove temp  

# random entity  
loot replace block 0 0 0 container.0 loot mck:entity  
execute store result score temp mck_temp run data get block 0 0 0 Items[0].Count  
function mck:bots/random_entity  
ride @e[tag=puppet,tag=temp,limit=1,sort=nearest] mount @s  
tag @e[tag=puppet,tag=temp] remove temp  

scoreboard players set @s mck_coins 0  
scoreboard players set @s mck_x_rot 0  
scoreboard players set @s mck_checkpoint 0  
scoreboard players set @s mck_speed 0  
scoreboard players set @s mck_grip 7  
scoreboard players set @s mck_boost 0  
scoreboard players set @s mck_stun 0  
scoreboard players set @s mck_item1 0  
scoreboard players set @s mck_item2 0  

execute store result entity @s HandItems[0].tag.maxcheckpoints int 1 run scoreboard players get checkpoints mck_temp  
data modify entity @s HandItems[0].tag.checkpoints set from storage lobby normal[0].track.tag.data.checkpoints  
data modify entity @s HandItems[0].tag.modes set from storage lobby normal[0].track.tag.data.modes  
execute store result score @s mck_drive_mode run data get storage lobby normal[0].track.tag.data.modes[0]  
data modify entity @s HandItems[0].tag.bot_checkpoints set from storage lobby normal[0].track.tag.data.bot_checkpoints  
function mck:bots/set_checkpoint  

execute store result entity @s Rotation[0] float 1 run scoreboard players get startangle mck_temp  
execute store result score @s mck_dir run data get entity @s Rotation[0]  
scoreboard players operation @s mck_startangle = startangle mck_temp  
execute store result score x mck_temp run data get storage temp startpos[0][0] 10  
execute store result score y mck_temp run data get storage temp startpos[0][1] 10  
execute store result score z mck_temp run data get storage temp startpos[0][2] 10  
scoreboard players add x mck_temp 5  
scoreboard players add z mck_temp 5  
execute store result storage temp coordx double 0.1 run scoreboard players get x mck_temp  
execute store result storage temp coordy double 0.1 run scoreboard players get y mck_temp  
execute store result storage temp coordz double 0.1 run scoreboard players get z mck_temp  
data remove storage temp coord  
data modify storage temp coord append from storage temp coordx  
data modify storage temp coord append from storage temp coordy  
data modify storage temp coord append from storage temp coordz  
data modify entity @s Pos set from storage temp coord  
data remove storage temp startpos[0]