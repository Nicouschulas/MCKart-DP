scoreboard players add id mck_red_id 1
scoreboard players operation @s mck_red_id = id mck_red_id
scoreboard players operation red_id mck_temp = id mck_red_id
execute if entity @s[type=player] run data modify storage temp shell_trail set from entity @s EnderItems[3].tag.shell_trail

execute if entity @s[tag=bot] run data modify storage temp shell_trail set from entity @s HandItems[0].tag.shell_trail