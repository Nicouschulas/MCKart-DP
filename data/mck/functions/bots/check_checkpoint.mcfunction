execute store result score x1 mck_temp run data get entity @s Pos[0] 10
execute store result score z1 mck_temp run data get entity @s Pos[2] 10

execute store result score x2 mck_temp run data get storage temp pos[0] 10
execute store result score z2 mck_temp run data get storage temp pos[2] 10

scoreboard players operation x2 mck_temp -= x1 mck_temp
scoreboard players operation z2 mck_temp -= z1 mck_temp
scoreboard players operation x2 mck_temp *= x2 mck_temp
scoreboard players operation z2 mck_temp *= z2 mck_temp

scoreboard players operation distance mck_temp = x2 mck_temp
scoreboard players operation distance mck_temp += z2 mck_temp

execute if score distance mck_temp matches ..2500 run function mck:bots/next_checkpoint