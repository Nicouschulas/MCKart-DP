scoreboard players add @s mck_timer 1

execute if score @s mck_dir matches 1 run tp @s ^ ^ ^0.5
execute unless score @s mck_dir matches 1 run tp @s ^ ^ ^-0.5

scoreboard players set bool mck_temp 0
execute if score @s mck_timer matches 620.. if score @s mck_dir matches 1 run scoreboard players set bool mck_temp 1
execute if score @s mck_timer matches 620.. unless score @s mck_dir matches 1 run scoreboard players set bool mck_temp 2
execute if score bool mck_temp matches 1 run scoreboard players set @s mck_dir 0
execute if score bool mck_temp matches 2 run scoreboard players set @s mck_dir 1
execute if score bool mck_temp matches 1.. run scoreboard players set @s mck_timer 0