scoreboard players set temp mck_temp 0
execute if score id mck_temp matches 2 run scoreboard players set temp mck_temp 1
execute if score id mck_temp matches 4 run scoreboard players set temp mck_temp 3
execute if score id mck_temp matches 8 run scoreboard players set temp mck_temp 7
execute if score id mck_temp matches 12 run scoreboard players set temp mck_temp 11
execute if score id mck_temp matches 14 run scoreboard players set temp mck_temp 14

execute on passengers if entity @s[tag=item_mount] run scoreboard players operation @s mck_item_mount = temp mck_temp