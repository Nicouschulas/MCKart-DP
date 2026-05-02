data modify storage temp goods set from entity @s EnderItems[5].components

execute store result score amount mck_temp run data get storage temp goods[{data:{group:3b}}].data.amount
scoreboard players operation amount mck_temp += @s mck_super_vote
scoreboard players reset @s mck_super_vote

execute store result storage temp goods[{data:{group:3b}}].data.amount int 1 run scoreboard players get amount mck_temp
item replace block 0 0 0 container.0 from entity @s enderchest.5
data modify block 0 0 0 Items[0].components.player_goods set from storage temp goods
item replace entity @s enderchest.5 from block 0 0 0 container.0