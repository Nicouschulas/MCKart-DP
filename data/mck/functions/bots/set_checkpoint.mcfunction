execute store result score x mck_temp run data get entity @s HandItems[0].tag.bot_checkpoints[0].pos[0] 10
execute store result score y mck_temp run data get entity @s HandItems[0].tag.bot_checkpoints[0].pos[1] 10
execute store result score z mck_temp run data get entity @s HandItems[0].tag.bot_checkpoints[0].pos[2] 10
execute store result score range mck_temp run data get entity @s HandItems[0].tag.bot_checkpoints[0].range

loot replace block 0 0 0 container.0 loot mck:offset
execute store result score offset mck_temp run data get block 0 0 0 Items[0].Count
scoreboard players remove offset mck_temp 6
scoreboard players operation offset mck_temp *= range mck_temp
scoreboard players operation x mck_temp += offset mck_temp

loot replace block 0 0 0 container.0 loot mck:offset
execute store result score offset mck_temp run data get block 0 0 0 Items[0].Count
scoreboard players remove offset mck_temp 6
scoreboard players operation offset mck_temp *= range mck_temp
scoreboard players operation z mck_temp += offset mck_temp

data modify entity @s HandItems[0].tag.bot_focus set value [0.0d,0.0d,0.0d]
execute store result entity @s HandItems[0].tag.bot_focus[0] double 0.1 run scoreboard players get x mck_temp
execute store result entity @s HandItems[0].tag.bot_focus[1] double 0.1 run scoreboard players get y mck_temp
execute store result entity @s HandItems[0].tag.bot_focus[2] double 0.1 run scoreboard players get z mck_temp