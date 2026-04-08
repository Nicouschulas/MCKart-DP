scoreboard players set clear mck_temp 0
scoreboard players set temp mck_temp 0

execute unless data storage menu inv[{Slot:9b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{Slot:9b}] run scoreboard players set @s mck_page 0
execute unless data storage menu inv[{Slot:9b}] if score @s mck_lobby matches 1.. run scoreboard players set @s mck_page -1
execute unless data storage menu inv[{Slot:9b}] run scoreboard players set temp mck_temp -1

execute unless data storage menu inv[{Slot:11b}] run scoreboard players set clear mck_temp 2
execute unless data storage menu inv[{Slot:11b}] run scoreboard players set @s mck_player_menu 1
execute unless data storage menu inv[{Slot:12b}] run scoreboard players set clear mck_temp 2
execute unless data storage menu inv[{Slot:12b}] run scoreboard players set @s mck_player_menu 6
execute unless data storage menu inv[{Slot:13b}] run scoreboard players set clear mck_temp 2
execute unless data storage menu inv[{Slot:13b}] run scoreboard players set @s mck_player_menu 3
execute unless data storage menu inv[{Slot:14b}] run scoreboard players set clear mck_temp 2
execute unless data storage menu inv[{Slot:14b}] run scoreboard players set @s mck_player_menu 4
execute unless data storage menu inv[{Slot:15b}] run scoreboard players set clear mck_temp 2
execute unless data storage menu inv[{Slot:15b}] run scoreboard players set @s mck_player_menu 5
execute unless data storage menu inv[{Slot:16b}] run scoreboard players set clear mck_temp 2
execute unless data storage menu inv[{Slot:16b}] run scoreboard players set @s mck_player_menu 2
execute unless data storage menu inv[{Slot:17b}] run scoreboard players set clear mck_temp 2
execute unless data storage menu inv[{Slot:17b}] run scoreboard players set @s mck_player_menu 7

execute unless data storage menu inv[{Slot:27b}] run scoreboard players set clear mck_temp 3
execute unless data storage menu inv[{Slot:27b}] run scoreboard players set slot mck_temp 0
execute unless data storage menu inv[{Slot:28b}] run scoreboard players set clear mck_temp 3
execute unless data storage menu inv[{Slot:28b}] run scoreboard players set slot mck_temp 1
execute unless data storage menu inv[{Slot:29b}] run scoreboard players set clear mck_temp 3
execute unless data storage menu inv[{Slot:29b}] run scoreboard players set slot mck_temp 2
execute unless data storage menu inv[{Slot:30b}] run scoreboard players set clear mck_temp 3
execute unless data storage menu inv[{Slot:30b}] run scoreboard players set slot mck_temp 3
execute unless data storage menu inv[{Slot:31b}] run scoreboard players set clear mck_temp 3
execute unless data storage menu inv[{Slot:31b}] run scoreboard players set slot mck_temp 4
execute unless data storage menu inv[{Slot:32b}] run scoreboard players set clear mck_temp 3
execute unless data storage menu inv[{Slot:32b}] run scoreboard players set slot mck_temp 5
execute unless data storage menu inv[{Slot:33b}] run scoreboard players set clear mck_temp 3
execute unless data storage menu inv[{Slot:33b}] run scoreboard players set slot mck_temp 6
execute if score clear mck_temp matches 3 run function mck:menu/page_cosmetics/select

execute unless data storage menu inv[{Slot:35b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{Slot:35b}] store result score temp mck_temp run data get entity @s EnderItems[5].tag.menu_goods
execute if score temp mck_temp matches 8.. run item replace block 0 0 0 container.0 from entity @s enderchest.5
execute if score temp mck_temp matches 8.. run data modify block 0 0 0 Items[0].tag.menu_goods append from block 0 0 0 Items[0].tag.menu_goods[0]
execute if score temp mck_temp matches 8.. run data remove block 0 0 0 Items[0].tag.menu_goods[0]
execute if score temp mck_temp matches 8.. run item replace entity @s enderchest.5 from block 0 0 0 container.0

execute if score clear mck_temp matches 0 if score @s mck_previous_page matches 1 unless data storage menu inv[{Slot:18b}] run function mck:menu/page_cosmetics/child/leave
execute if score clear mck_temp matches 0 unless data storage menu inv[{Slot:18b}] run scoreboard players set clear mck_temp 4
execute if score clear mck_temp matches 0 unless data storage menu inv[{Slot:19b}] run scoreboard players set clear mck_temp 4
execute if score clear mck_temp matches 0 unless data storage menu inv[{Slot:20b}] run scoreboard players set clear mck_temp 4
execute if score clear mck_temp matches 0 unless data storage menu inv[{Slot:21b}] run scoreboard players set clear mck_temp 4
execute if score clear mck_temp matches 0 unless data storage menu inv[{Slot:22b}] run scoreboard players set clear mck_temp 4
execute if score clear mck_temp matches 0 unless data storage menu inv[{Slot:23b}] run scoreboard players set clear mck_temp 4
execute if score clear mck_temp matches 0 unless data storage menu inv[{Slot:24b}] run scoreboard players set clear mck_temp 4
execute if score clear mck_temp matches 0 unless data storage menu inv[{Slot:25b}] run scoreboard players set clear mck_temp 4

execute if score clear mck_temp matches 2 run function mck:menu/page_cosmetics/menu_goods
execute if score clear mck_temp matches 2 run scoreboard players set @s mck_previous_page 0

execute if score clear mck_temp matches 1..2 unless score temp mck_temp matches 1..7 run playsound ui.button.click master @s[scores={mck_setting1=1}] ~ ~ ~ 0.3 0.9
execute if score clear mck_temp matches 3 unless score @s mck_player_menu matches 2 run playsound minecraft:entity.arrow.hit_player master @s[scores={mck_setting1=1}] ~ ~ ~ 0.6 0.8
execute if score clear mck_temp matches 1.. run function mck:menu/draw