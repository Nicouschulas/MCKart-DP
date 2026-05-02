scoreboard players set clear mck_temp 0
scoreboard players set temp mck_temp 0

execute unless data storage menu inv[{Slot:9b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{Slot:9b}] run scoreboard players set @s mck_page 2
execute unless data storage menu inv[{Slot:9b}] run scoreboard players set temp mck_temp -1
execute unless data storage menu inv[{Slot:9b}] run scoreboard players reset @s mck_track

execute unless data storage menu inv[{Slot:18b}] run scoreboard players set clear mck_temp 2

scoreboard players set selected mck_temp 0

execute unless data storage menu inv[{Slot:10b}] run scoreboard players set selected mck_temp 1
execute unless data storage menu inv[{Slot:19b}] run scoreboard players set selected mck_temp 2
execute unless data storage menu inv[{Slot:28b}] run scoreboard players set selected mck_temp 3

execute unless data storage menu inv[{Slot:12b}] run scoreboard players set selected mck_temp 4
execute unless data storage menu inv[{Slot:21b}] run scoreboard players set selected mck_temp 5
execute unless data storage menu inv[{Slot:30b}] run scoreboard players set selected mck_temp 6

execute unless data storage menu inv[{Slot:14b}] run scoreboard players set selected mck_temp 7
execute unless data storage menu inv[{Slot:23b}] run scoreboard players set selected mck_temp 8
execute unless data storage menu inv[{Slot:32b}] run scoreboard players set selected mck_temp 9

execute unless data storage menu inv[{Slot:16b}] run scoreboard players set selected mck_temp 10
execute unless data storage menu inv[{Slot:25b}] run scoreboard players set selected mck_temp 11
execute unless data storage menu inv[{Slot:34b}] run scoreboard players set selected mck_temp 12

data remove storage temp id_list
data modify storage temp id_list set from entity @s Inventory[{Slot:9b}].tag.id_list
execute store result score count mck_temp run data get storage temp id_list
execute if score selected mck_temp > count mck_temp run scoreboard players set selected mck_temp 0

execute if score selected mck_temp matches 1.. run function mck:menu/spec_menu/selected

execute unless data storage menu inv[{Slot:-106b}] run scoreboard players set clear mck_temp 2

execute if score clear mck_temp matches 1 run playsound ui.button.click master @s[scores={mck_setting1=1}] ~ ~ ~ 0.3 0.9
execute if score clear mck_temp matches 1.. run function mck:menu/draw