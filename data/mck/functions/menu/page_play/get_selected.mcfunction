execute store result score normal mck_temp run data get storage lobby normal
execute store result score ranked mck_temp run data get storage lobby ranked

scoreboard players set selected mck_temp 0
execute if score normal mck_temp matches 1.. unless data storage menu inv[{Slot:18b}] components:[{minecraft:item_name:""}] run scoreboard players set selected mck_temp 1
execute if score normal mck_temp matches 2.. unless data storage menu inv[{Slot:19b}] components:[{minecraft:item_name:""}] run scoreboard players set selected mck_temp 2
execute if score normal mck_temp matches 3.. unless data storage menu inv[{Slot:20b}] components:[{minecraft:item_name:""}] run scoreboard players set selected mck_temp 3
execute if score normal mck_temp matches 4.. unless data storage menu inv[{Slot:21b}] components:[{minecraft:item_name:""}] run scoreboard players set selected mck_temp 4
execute if score normal mck_temp matches 5.. unless data storage menu inv[{Slot:22b}] components:[{minecraft:item_name:""}] run scoreboard players set selected mck_temp 5
execute if score normal mck_temp matches 6.. unless data storage menu inv[{Slot:23b}] components:[{minecraft:item_name:""}] run scoreboard players set selected mck_temp 6
execute if score normal mck_temp matches 7.. unless data storage menu inv[{Slot:24b}] components:[{minecraft:item_name:""}] run scoreboard players set selected mck_temp 7
execute if score normal mck_temp matches 8.. unless data storage menu inv[{Slot:25b}] components:[{minecraft:item_name:""}] run scoreboard players set selected mck_temp 8
execute if score normal mck_temp matches 9.. unless data storage menu inv[{Slot:26b}] components:[{minecraft:item_name:""}] run scoreboard players set selected mck_temp 9

execute if score ranked mck_temp matches 1.. unless data storage menu inv[{Slot:27b}] components:[{minecraft:item_name:""}] run scoreboard players set selected mck_temp -1
execute if score ranked mck_temp matches 2.. unless data storage menu inv[{Slot:28b}] components:[{minecraft:item_name:""}] run scoreboard players set selected mck_temp -2
execute if score ranked mck_temp matches 3.. unless data storage menu inv[{Slot:29b}] components:[{minecraft:item_name:""}] run scoreboard players set selected mck_temp -3
execute if score ranked mck_temp matches 4.. unless data storage menu inv[{Slot:30b}] components:[{minecraft:item_name:""}] run scoreboard players set selected mck_temp -4
execute if score ranked mck_temp matches 5.. unless data storage menu inv[{Slot:31b}] components:[{minecraft:item_name:""}] run scoreboard players set selected mck_temp -5
execute if score ranked mck_temp matches 6.. unless data storage menu inv[{Slot:32b}] components:[{minecraft:item_name:""}] run scoreboard players set selected mck_temp -6
execute if score ranked mck_temp matches 7.. unless data storage menu inv[{Slot:33b}] components:[{minecraft:item_name:""}] run scoreboard players set selected mck_temp -7
execute if score ranked mck_temp matches 8.. unless data storage menu inv[{Slot:34b}] components:[{minecraft:item_name:""}] run scoreboard players set selected mck_temp -8
execute if score ranked mck_temp matches 9.. unless data storage menu inv[{Slot:35b}] components:[{minecraft:item_name:""}] run scoreboard players set selected mck_temp -9

execute if score selected mck_temp matches 1.. run scoreboard players set @s mck_lobby_type 0
execute if score selected mck_temp matches ..-1 run scoreboard players set @s mck_lobby_type 1
execute if score selected mck_temp matches ..-1 run scoreboard players operation selected mck_temp *= #-1 mck_time