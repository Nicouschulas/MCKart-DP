scoreboard players add @e[tag=collector,limit=1] mck_stun 30
execute as @e[tag=collector,limit=1] at @s run function mck:player/drive/tumble

playsound minecraft:entity.witch.celebrate master @a[scores={mck_setting1=1}] ~ ~ ~ 1 1.5
particle minecraft:dragon_breath ~ ~1 ~ 0.5 0.5 0.5 0.05 14

kill @s