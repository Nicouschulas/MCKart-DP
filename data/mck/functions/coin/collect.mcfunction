scoreboard players set bool mck_temp 0
scoreboard players add @e[tag=collector] mck_coins 1

# challenge
execute as @a[tag=collector] run function mck:coin/collector

particle minecraft:block gold_block ~ ~0.35 ~ 0.2 0.2 0.2 0 5
playsound minecraft:entity.player.levelup master @a[tag=collector,scores={mck_setting1=1}] ~ ~ ~ 2 1.8
tp @s ~-0.5 ~ ~-0.5

data modify storage temp list1 set from storage lobby normal
data modify storage temp list2 set value []
function mck:coin/lobby
data modify storage lobby normal set from storage temp list2


data modify storage temp list1 set from storage lobby ranked
data modify storage temp list2 set value []
execute if score bool mck_temp matches 1 run data modify storage temp list2 set from storage lobby ranked
execute if score bool mck_temp matches 0 run function mck:coin/lobby
data modify storage lobby ranked set from storage temp list2


kill @s