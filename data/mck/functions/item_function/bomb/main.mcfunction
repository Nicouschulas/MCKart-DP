scoreboard players add @s mck_timer 1

execute if score @s mck_timer matches 21 run playsound minecraft:block.note_block.bit master @a[scores={mck_setting1=1}] ~ ~ ~ 2 2
execute if score @s mck_timer matches 41 run playsound minecraft:block.note_block.bit master @a[scores={mck_setting1=1}] ~ ~ ~ 2 2
execute if score @s mck_timer matches 61..81 run playsound minecraft:block.note_block.bit master @a[scores={mck_setting1=1}] ~ ~ ~ 2 2

execute if score @s mck_timer matches 21..55 run particle minecraft:flame ~ ~1.25 ~ 0 0 0 0.005 1


execute if score @s mck_timer matches 81 run playsound minecraft:entity.generic.explode master @a[scores={mck_setting1=1}] ~ ~ ~ 2 0.6
execute if score @s mck_timer matches 81 run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 0
execute if score @s mck_timer matches 81 as @e[type=fox,distance=..4] at @s run function mck:item_function/bomb/explode
execute if score @s mck_timer matches 81 run kill @s