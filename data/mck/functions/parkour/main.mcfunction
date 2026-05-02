scoreboard players add @s mck_parkour 1  
execute if score @s mck_parkour matches 3 run playsound minecraft:block.note_block.chime master @s[scores={mck_setting1=1}] ~ ~ ~ 0.4 1 0.4  

scoreboard players set bool mck_temp 0  
execute if block ~ ~ ~ void_air run scoreboard players set bool mck_temp 1  
execute if block ~ ~-1 ~ void_air run scoreboard players set bool mck_temp 1  
execute if block ~ ~1 ~ void_air run scoreboard players set bool mck_temp 1  
execute if block ~ ~2 ~ void_air run scoreboard players set bool mck_temp 1  

execute if score bool mck_temp matches 1 run tp @s -222.84 75.00 -93.36 1378.54 1.13  
execute if score bool mck_temp matches 1 at @s run playsound minecraft:block.note_block.bass master @s[scores={mck_setting1=1}] ~ ~ ~ 2 0.6  

execute if block ~ ~ ~ warped_pressure_plate run function mck:parkour/finish