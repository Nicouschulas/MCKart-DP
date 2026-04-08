execute store result score rotation mck_temp run data get entity @s Rotation[0]

execute if score rotation mck_temp matches -225..-135 run scoreboard players set rotation mck_temp -180
execute if score rotation mck_temp matches -135..-45 run scoreboard players set rotation mck_temp -90
execute if score rotation mck_temp matches -45..45 run scoreboard players set rotation mck_temp 0
execute if score rotation mck_temp matches 45..135 run scoreboard players set rotation mck_temp 90
execute if score rotation mck_temp matches 135..225 run scoreboard players set rotation mck_temp 180

execute if score rotation mck_temp matches -180 at @s align xyz positioned ~0.5 ~ ~0.99 run function mck:rankedboard/_spawn
execute if score rotation mck_temp matches 180 at @s align xyz positioned ~0.5 ~ ~0.99 run function mck:rankedboard/_spawn
execute if score rotation mck_temp matches 0 at @s align xyz positioned ~0.5 ~ ~0.01 run function mck:rankedboard/_spawn
execute if score rotation mck_temp matches 90 at @s align xyz positioned ~0.99 ~ ~0.5 run function mck:rankedboard/_spawn
execute if score rotation mck_temp matches -90 at @s align xyz positioned ~0.01 ~ ~0.5 run function mck:rankedboard/_spawn