scoreboard players set clear mck_temp 0
scoreboard players set temp mck_temp 0

execute unless data storage menu inv[{Slot:127b}] run scoreboard players set clear mck_temp 1

execute if score @s mck_scene matches 12 unless data storage menu inv[{Slot:9b}] run scoreboard players set clear mck_temp 2
execute if score @s mck_scene matches 12 unless data storage menu inv[{Slot:9b}] run scoreboard players set temp mck_temp 1
execute if score temp mck_temp matches 1 run scoreboard players set @s mck_scene 13
execute if score temp mck_temp matches 1 run function mck:player/scenes/start


execute unless score temp mck_temp matches 1 if score @s mck_scene matches 13 unless data storage menu inv[{Slot:18b}] run scoreboard players set clear mck_temp 2
execute unless score temp mck_temp matches 1 if score @s mck_scene matches 13 unless data storage menu inv[{Slot:18b}] run scoreboard players set temp mck_temp 2
execute if score temp mck_temp matches 2 run scoreboard players set @s mck_scene 14
execute if score temp mck_temp matches 2 run function mck:player/scenes/start


execute unless score temp mck_temp matches 2 if score @s mck_scene matches 15 unless data storage menu inv[{Slot:18b}] run scoreboard players set temp mck_temp 4
execute unless score temp mck_temp matches 2 if score @s mck_scene matches 15 unless data storage menu inv[{Slot:19b}] run scoreboard players set temp mck_temp 4
execute unless score temp mck_temp matches 2 if score @s mck_scene matches 15 unless data storage menu inv[{Slot:20b}] run scoreboard players set temp mck_temp 4
execute unless score temp mck_temp matches 2 if score @s mck_scene matches 15 unless data storage menu inv[{Slot:21b}] run scoreboard players set temp mck_temp 4
execute unless score temp mck_temp matches 2 if score @s mck_scene matches 15 unless data storage menu inv[{Slot:22b}] run scoreboard players set temp mck_temp 4
execute unless score temp mck_temp matches 2 if score @s mck_scene matches 15 unless data storage menu inv[{Slot:23b}] run scoreboard players set temp mck_temp 4
execute unless score temp mck_temp matches 2 if score @s mck_scene matches 15 unless data storage menu inv[{Slot:24b}] run scoreboard players set temp mck_temp 4
execute unless score temp mck_temp matches 2 if score @s mck_scene matches 15 unless data storage menu inv[{Slot:25b}] run scoreboard players set temp mck_temp 4
execute unless score temp mck_temp matches 2 if score @s mck_scene matches 15 unless data storage menu inv[{Slot:26b}] run scoreboard players set temp mck_temp 4
execute if score temp mck_temp matches 4 run scoreboard players set clear mck_temp 2
execute if score temp mck_temp matches 4 run scoreboard players set @s mck_scene 16
execute if score temp mck_temp matches 4 run function mck:player/scenes/start


execute if score @s mck_scene matches 14 unless data storage menu inv[{Slot:10b}] run scoreboard players set clear mck_temp 2
execute if score @s mck_scene matches 14 unless data storage menu inv[{Slot:10b}] run scoreboard players set temp mck_temp 3
execute if score temp mck_temp matches 3 run scoreboard players set @s mck_scene 15
execute if score temp mck_temp matches 3 run function mck:player/scenes/start


execute if score clear mck_temp matches 2.. run playsound ui.button.click master @s ~ ~ ~ 0.3 0.9
execute if score clear mck_temp matches 1.. run function mck:menu/draw