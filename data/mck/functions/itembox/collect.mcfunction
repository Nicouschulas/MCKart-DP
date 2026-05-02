scoreboard players set bool mck_temp 0

scoreboard players set @e[tag=collector,limit=1] mck_itembox 1
scoreboard players set @p[tag=collector] mck_item_delay 10

# challenge
execute as @a[tag=collector] if score @s mck_challenge_level matches 2 if score @s mck_quest2 matches 0.. run scoreboard players add @s mck_quest2 1

execute positioned ~ ~1 ~ if entity @e[tag=itembox,type=end_crystal,limit=1,sort=nearest,distance=..0.5] run scoreboard players set @e[tag=collector,limit=1] mck_itembox 2
execute positioned ~ ~-1 ~ if entity @e[tag=itembox,type=end_crystal,limit=1,sort=nearest,distance=..0.5] run scoreboard players set @e[tag=collector,limit=1] mck_itembox 2

particle minecraft:scrape ~ ~1.1 ~ 0.4 0.4 0.4 2 20
playsound minecraft:block.stone.break master @a[scores={mck_setting1=1}] ~ ~ ~ 3 2
execute if score type mck_temp matches 0 run tp @s ~-0.5 ~ ~-0.5

data modify storage temp list1 set from storage lobby normal
data modify storage temp list2 set value []
execute if score type mck_temp matches 0 run function mck:itembox/lobby
execute if score type mck_temp matches 0 run data modify storage lobby normal set from storage temp list2


data modify storage temp list1 set from storage lobby ranked
data modify storage temp list2 set value []
execute if score type mck_temp matches 0 if score bool mck_temp matches 1 run data modify storage temp list2 set from storage lobby ranked
execute if score type mck_temp matches 0 if score bool mck_temp matches 0 run function mck:itembox/lobby
execute if score type mck_temp matches 0 run data modify storage lobby ranked set from storage temp list2


execute if score type mck_temp matches 0 run kill @s