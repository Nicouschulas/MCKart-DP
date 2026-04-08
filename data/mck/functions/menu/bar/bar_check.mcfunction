scoreboard players set clear mck_temp 0

execute unless data storage menu inv[{Slot:9b}] unless score @s mck_lobby matches 1.. unless score @s mck_spec_lobby matches 0 if score @s mck_page matches -1 run scoreboard players set @s mck_spec_lobby 0
execute unless data storage menu inv[{Slot:9b}] unless score @s mck_lobby matches 0 unless score @s mck_page matches -1 run scoreboard players set clear mck_temp 2
execute unless data storage menu inv[{Slot:9b}] unless score clear mck_temp matches 2 run scoreboard players set @s mck_page 0
execute unless data storage menu inv[{Slot:9b}] unless score clear mck_temp matches 2 run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{Slot:9b}] if score clear mck_temp matches 2 run scoreboard players set @s mck_page -1
execute unless data storage menu inv[{Slot:9b}] if score clear mck_temp matches 2 run scoreboard players operation @s mck_spec_lobby = @s mck_lobby
execute unless data storage menu inv[{Slot:9b}] unless score @s mck_lobby matches 1.. unless score @s mck_spec_lobby matches 0 if score @s mck_page matches 0 run scoreboard players set @s mck_spec_lobby 0

execute unless data storage menu inv[{Slot:10b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{Slot:10b}] run scoreboard players set @s mck_page 1

execute unless data storage menu inv[{Slot:11b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{Slot:11b}] run scoreboard players set @s mck_page 2

execute unless data storage menu inv[{Slot:12b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{Slot:12b}] run scoreboard players set @s mck_page 3
execute unless data storage menu inv[{Slot:12b}] run scoreboard players set @s mck_player_menu 1
execute unless data storage menu inv[{Slot:12b}] run item replace block 0 0 0 container.0 from entity @s enderchest.5
execute unless data storage menu inv[{Slot:12b}] run data modify block 0 0 0 Items[0].tag.menu_goods set value []
execute unless data storage menu inv[{Slot:12b}] run item replace entity @s enderchest.5 from block 0 0 0 container.0
execute unless data storage menu inv[{Slot:12b}] run scoreboard players set @s mck_previous_page 0
execute unless data storage menu inv[{Slot:12b}] run function mck:menu/page_cosmetics/menu_goods

#execute unless data storage menu inv[{Slot:13b}] run scoreboard players set clear mck_temp 1

execute unless data storage menu inv[{Slot:14b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{Slot:14b}] run scoreboard players set @s mck_page 7

execute unless data storage menu inv[{Slot:15b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{Slot:15b}] run scoreboard players set @s mck_page 5

execute unless data storage menu inv[{Slot:16b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{Slot:16b}] if score @s mck_lobby matches 0 if score @s mck_status matches 0 run function mck:player/warp/start

execute unless data storage menu inv[{Slot:17b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{Slot:17b}] run scoreboard players set @s mck_page 6

execute if score clear mck_temp matches 1.. at @s run playsound ui.button.click master @s[scores={mck_setting1=1}] ~ ~ ~ 0.3 0.9
execute if score clear mck_temp matches 1.. run function mck:menu/draw