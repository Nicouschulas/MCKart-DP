scoreboard players set clear mck_temp 0

execute unless data storage menu inv[{Slot:22b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{Slot:22b}] run scoreboard players set @s mck_player_menu 1
execute unless data storage menu inv[{Slot:22b}] run scoreboard players operation @s mck_previous_page = @s mck_page
execute unless data storage menu inv[{Slot:22b}] run scoreboard players set @s mck_page -7

execute if score clear mck_temp matches 1.. run playsound minecraft:entity.villager.trade master @s[scores={mck_setting1=1}] ~ ~ ~ 1 1
execute if score clear mck_temp matches 1.. run function mck:menu/draw



execute unless data storage menu inv[{Slot:13b}] unless score @s mck_menudelay matches 1.. run function mck:menu/draw