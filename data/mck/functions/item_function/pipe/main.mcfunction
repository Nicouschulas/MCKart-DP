execute if score @s mck_pipe matches 80 run playsound minecraft:block.note_block.bit master @s[scores={mck_setting1=1}] ~ ~ ~ 1 0.9
execute if score @s mck_pipe matches 79 run playsound minecraft:block.note_block.bit master @s[scores={mck_setting1=1}] ~ ~ ~ 1 0.8
execute if score @s mck_pipe matches 78 run playsound minecraft:block.note_block.bit master @s[scores={mck_setting1=1}] ~ ~ ~ 1 0.4

execute if score @s mck_pipe matches 70 run playsound minecraft:block.note_block.bit master @s[scores={mck_setting1=1}] ~ ~ ~ 1 0.9
execute if score @s mck_pipe matches 69 run playsound minecraft:block.note_block.bit master @s[scores={mck_setting1=1}] ~ ~ ~ 1 0.8
execute if score @s mck_pipe matches 68 run playsound minecraft:block.note_block.bit master @s[scores={mck_setting1=1}] ~ ~ ~ 1 0.4

execute if score @s mck_pipe matches 60 run playsound minecraft:block.note_block.bit master @s[scores={mck_setting1=1}] ~ ~ ~ 1 0.9
execute if score @s mck_pipe matches 59 run playsound minecraft:block.note_block.bit master @s[scores={mck_setting1=1}] ~ ~ ~ 1 0.8
execute if score @s mck_pipe matches 58 run playsound minecraft:block.note_block.bit master @s[scores={mck_setting1=1}] ~ ~ ~ 1 0.4



execute if score @s mck_pipe matches 40 run function mck:item_function/pipe/tp


execute if score @s mck_pipe matches 40 run playsound minecraft:block.note_block.bit master @s[scores={mck_setting1=1}] ~ ~ ~ 1 0.9
execute if score @s mck_pipe matches 39 run playsound minecraft:block.note_block.bit master @s[scores={mck_setting1=1}] ~ ~ ~ 1 0.8
execute if score @s mck_pipe matches 38 run playsound minecraft:block.note_block.bit master @s[scores={mck_setting1=1}] ~ ~ ~ 1 0.4

execute if score @s mck_pipe matches 30 run playsound minecraft:block.note_block.bit master @s[scores={mck_setting1=1}] ~ ~ ~ 1 0.9
execute if score @s mck_pipe matches 29 run playsound minecraft:block.note_block.bit master @s[scores={mck_setting1=1}] ~ ~ ~ 1 0.8
execute if score @s mck_pipe matches 28 run playsound minecraft:block.note_block.bit master @s[scores={mck_setting1=1}] ~ ~ ~ 1 0.4

execute if score @s mck_pipe matches 20 run playsound minecraft:block.note_block.bit master @s[scores={mck_setting1=1}] ~ ~ ~ 1 0.9
execute if score @s mck_pipe matches 19 run playsound minecraft:block.note_block.bit master @s[scores={mck_setting1=1}] ~ ~ ~ 1 0.8
execute if score @s mck_pipe matches 18 run playsound minecraft:block.note_block.bit master @s[scores={mck_setting1=1}] ~ ~ ~ 1 0.4

execute if score @s mck_pipe matches 18 if entity @s[tag=bot] run tag @s remove pipe_user
execute if score @s mck_pipe matches 18 if entity @s[tag=!bot] on vehicle run tag @s remove pipe_user


execute if score @s mck_pipe matches 30.. run scoreboard players set @s mck_speed 0


scoreboard players remove @s mck_pipe 1