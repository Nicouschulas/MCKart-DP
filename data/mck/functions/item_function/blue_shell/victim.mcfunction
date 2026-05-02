scoreboard players add id mck_blue_id 1
scoreboard players operation @s mck_blue_id = id mck_blue_id
scoreboard players operation blue_id mck_temp = id mck_blue_id
execute if entity @s[type=player] run data modify storage temp shell_trail set from entity @s EnderItems[3].components.shell_trail

execute if entity @s[tag=bot] run data modify storage temp shell_trail set from entity @s HandItems[0].components.shell_trail