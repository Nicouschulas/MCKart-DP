scoreboard players add @s mck_timer 1
execute if score @s mck_timer matches 30.. run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1
execute if score @s mck_timer matches 30.. run kill @s