particle minecraft:small_flame ~ ~ ~ 0 0 0 0.02 5
particle minecraft:angry_villager ~ ~-0.3 ~ 0 0 0 0.1 1

scoreboard players set bool mck_temp 0
execute if score @s mck_id matches 1.. as @e[type=fox,distance=..2.8] unless score @s mck_id = temp mck_temp run scoreboard players set bool mck_temp 1
execute unless score @s mck_id matches 1.. if entity @e[type=fox,distance=..2.8] run scoreboard players set bool mck_temp 2

execute if score bool mck_temp matches 1 run scoreboard players operation temp mck_temp = @s mck_id
execute if score bool mck_temp matches 1 as @e[type=fox,distance=..2.8] unless score @s mck_id = temp mck_temp run scoreboard players remove @s mck_speed 60
execute if score bool mck_temp matches 1 run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1
execute if score bool mck_temp matches 1 run kill @s

execute if score bool mck_temp matches 2 as @e[type=fox,distance=..2.8] run scoreboard players remove @s mck_speed 60
execute if score bool mck_temp matches 2 run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1
execute if score bool mck_temp matches 2 run kill @s

execute if score bool mck_temp matches 1.. run playsound minecraft:entity.generic.explode master @a[scores={mck_setting1=1}] ~ ~ ~ 1 2