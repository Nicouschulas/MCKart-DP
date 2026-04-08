scoreboard players operation temp mck_temp = @s mck_region

execute store result score temp2 mck_temp run time query daytime


execute if score @s mck_scene matches 1..6 run scoreboard players set temp mck_temp 0
execute if score @s mck_scene matches 7..16 run scoreboard players set temp mck_temp 16


execute if entity @s[tag=builder] run scoreboard players set temp mck_temp 17



execute if score temp mck_temp matches 1 run playsound custom:ambient.containerhafen ambient @s ~ ~ ~ 0.8 1
execute if score temp mck_temp matches 1 run scoreboard players set @s mck_region_timer 1140

execute if score temp mck_temp matches 2 run playsound custom:ambient.schmelzerei ambient @s ~ ~ ~ 0.8 1
execute if score temp mck_temp matches 2 run scoreboard players set @s mck_region_timer 1140

execute if score temp mck_temp matches 3 if score temp2 mck_temp matches 0..13000 run playsound custom:ambient.pampaday ambient @s ~ ~ ~ 0.8 1
execute if score temp mck_temp matches 3 if score temp2 mck_temp matches 13001.. run playsound custom:ambient.pampanight ambient @s ~ ~ ~ 0.8 1
execute if score temp mck_temp matches 3 run scoreboard players set @s mck_region_timer 1140

execute if score temp mck_temp matches 4 run playsound custom:ambient.farmland ambient @s ~ ~ ~ 0.8 1
execute if score temp mck_temp matches 4 run scoreboard players set @s mck_region_timer 1140

execute if score temp mck_temp matches 5 run playsound custom:ambient.parkerspark ambient @s ~ ~ ~ 0.8 1
execute if score temp mck_temp matches 5 run scoreboard players set @s mck_region_timer 1140

execute if score temp mck_temp matches 6 run playsound custom:shopmusic ambient @s ~ ~ ~ 0.3 1
execute if score temp mck_temp matches 6 run scoreboard players set @s mck_region_timer 320

execute if score temp mck_temp matches 7 if score temp2 mck_temp matches 0..13000 run playsound custom:ambient.cityday ambient @s ~ ~ ~ 0.8 1
execute if score temp mck_temp matches 7 if score temp2 mck_temp matches 13001.. run playsound custom:ambient.citynight ambient @s ~ ~ ~ 0.8 1
execute if score temp mck_temp matches 7 run scoreboard players set @s mck_region_timer 1140

execute if score temp mck_temp matches 8 run playsound custom:ambient.springcastle ambient @s ~ ~ ~ 0.6 1
execute if score temp mck_temp matches 8 run scoreboard players set @s mck_region_timer 1140

execute if score temp mck_temp matches 9 run playsound custom:ambient.autumnvalley ambient @s ~ ~ ~ 0.8 1
execute if score temp mck_temp matches 9 run scoreboard players set @s mck_region_timer 1140

execute if score temp mck_temp matches 10 run playsound custom:ambient.baustelle ambient @s ~ ~ ~ 0.8 1
execute if score temp mck_temp matches 10 run scoreboard players set @s mck_region_timer 1140

execute if score temp mck_temp matches 11 run playsound custom:ambient.kekw ambient @s ~ ~ ~ 0.8 1
execute if score temp mck_temp matches 11 run scoreboard players set @s mck_region_timer 1140

execute if score temp mck_temp matches 12 run playsound custom:ambient.strand ambient @s ~ ~ ~ 0.8 1
execute if score temp mck_temp matches 12 run scoreboard players set @s mck_region_timer 1140

execute if score temp mck_temp matches 13 run playsound custom:ambient.bucht ambient @s ~ ~ ~ 0.8 1
execute if score temp mck_temp matches 13 run scoreboard players set @s mck_region_timer 1140

execute if score temp mck_temp matches 14 run playsound custom:ambient.spawn ambient @s ~ ~ ~ 0.8 1
execute if score temp mck_temp matches 14 run scoreboard players set @s mck_region_timer 1140

execute if score temp mck_temp matches 15 run playsound custom:ambient.parkour ambient @s ~ ~ ~ 0.8 1
execute if score temp mck_temp matches 15 run scoreboard players set @s mck_region_timer 1140

execute if score temp mck_temp matches 16 run playsound custom:tutorialkart ambient @s ~ ~ ~ 0.3 1
execute if score temp mck_temp matches 16 run scoreboard players set @s mck_region_timer 1240

execute if score temp mck_temp matches 18 run playsound custom:ambient.void ambient @s ~ ~ ~ 0.25 1
execute if score temp mck_temp matches 18 run scoreboard players set @s mck_region_timer 1060

execute if score temp mck_temp matches 19 run playsound custom:ambient.void ambient @s ~ ~ ~ 0.25 1
execute if score temp mck_temp matches 19 run scoreboard players set @s mck_region_timer 1060