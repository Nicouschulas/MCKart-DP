scoreboard players set random.input random 9
function random:random
scoreboard players operation rank mck_temp = random.output random
scoreboard players add rank mck_temp 1

scoreboard players set random.input random 600
function random:random
scoreboard players operation time mck_temp = random.output random


data remove storage ranklist player
data modify storage ranklist player.data.id set value -1
data modify storage ranklist player.data.head.tag.SkullOwner.Name set value "Harald"
execute store result storage ranklist player.data.stats.rank int 1 run scoreboard players get rank mck_temp
execute store result storage ranklist player.data.stats.rank_time int 1 run scoreboard players get time mck_temp

data modify storage ranklist players append from storage ranklist player

scoreboard players remove testamount mck_temp 1

execute if score testamount mck_temp matches 1.. run function mck:ranklist/demo