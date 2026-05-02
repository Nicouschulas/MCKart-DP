execute if score @s mck_star matches 140 run playsound custom:star master @a[scores={mck_setting1=1}] ~ ~ ~ 0.5 1
execute if score @s mck_star matches 40..140 run particle minecraft:end_rod ~ ~ ~ 0.5 1 0.5 0.1 5
execute if score @s mck_star matches 21..39 run particle minecraft:end_rod ~ ~ ~ 0.5 1 0.5 0.1 3
execute if score @s mck_star matches 0..21 run particle minecraft:end_rod ~ ~ ~ 0.5 1 0.5 0.1 1

execute if score @s mck_star matches 0..140 unless score @s mck_brake matches 1.. run scoreboard players set @s mck_speed 180
execute if score @s mck_star matches 0..140 if entity @s[tag=!bot] on vehicle at @s as @e[type=fox,distance=0.01..2] if score @s mck_speed matches 81.. run scoreboard players set @s mck_speed 80
execute if score @s mck_star matches 0..140 if entity @s[tag=bot] as @e[type=fox,distance=0.01..2] if score @s mck_speed matches 81.. run scoreboard players set @s mck_speed 80

scoreboard players remove @s mck_star 1

execute if score @s mck_star matches ..0 run scoreboard players reset @s mck_star