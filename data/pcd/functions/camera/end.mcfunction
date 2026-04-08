execute as @a if score @s pcd.id = #id pcd.temp if score @s pcd.enable matches 1 run gamemode creative
execute as @a if score @s pcd.id = #id pcd.temp run scoreboard players reset @s pcd.render

kill @s