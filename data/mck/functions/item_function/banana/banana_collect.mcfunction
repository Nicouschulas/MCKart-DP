scoreboard players add @e[tag=collector,limit=1] mck_stun 15
execute as @e[tag=collector,limit=1] at @s run function mck:player/drive/tumble
execute as @e[tag=collector,limit=1] if score @s mck_challenge_level matches 7 if score @s mck_quest2 matches 0.. run scoreboard players add @s mck_quest2 1


playsound minecraft:block.honey_block.break master @a[scores={mck_setting1=1}] ~ ~ ~ 2 1
particle minecraft:block honey_block ~ ~0.2 ~ 0.3 0.3 0.3 0 25

kill @s