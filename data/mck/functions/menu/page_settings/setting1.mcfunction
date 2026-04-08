execute if score @s mck_setting1 matches 0 run scoreboard players set bool mck_temp 1
execute if score @s mck_setting1 matches 1 run scoreboard players set bool mck_temp 0
execute if score bool mck_temp matches 1 run scoreboard players set @s mck_setting1 1
execute if score bool mck_temp matches 1 run function mck:player/regions/play
execute if score bool mck_temp matches 0 run scoreboard players set @s mck_setting1 0
execute if score bool mck_temp matches 0 run stopsound @s