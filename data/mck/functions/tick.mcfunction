function mck:chat/timer

summon marker 0 0 0 {Tags:["recording_shower"]}

# set players online and so on
execute store result score online_players mck_data if entity @a
execute store result score lobby_players mck_data if entity @a[scores={mck_lobby=1..}]
execute store result score spec_players mck_data if entity @a[gamemode=spectator]
scoreboard players operation nolobby_players mck_data = online_players mck_data
scoreboard players operation nolobby_players mck_data -= lobby_players mck_data
scoreboard players operation nolobby_players mck_data -= spec_players mck_data
execute if score nolobby_players mck_data matches ..-1 run scoreboard players set nolobby_players mck_data 0

# SHOW WORKING POINTS OF BOB
scoreboard players set bob_show_points mck_temp 0

scoreboard players operation old_spec_count mck_spectate = spec_count mck_spectate
scoreboard players set spec_count mck_spectate 0

execute as @e at @s run function mck:as_entity

scoreboard players reset check_spec mck_spectate
execute unless score old_spec_count mck_spectate = spec_count mck_spectate run scoreboard players set check_spec mck_spectate 1



# Timer
scoreboard players add kart_check mck_timer 1
execute if score kart_check mck_timer matches 40.. run function mck:player/recording/check
execute if score kart_check mck_timer matches 40.. run scoreboard players set kart_check mck_timer 0
execute if score kart_check mck_timer matches 30 if score lobby_players mck_data matches 0 run data modify storage minecraft:lobby recordings set value []

scoreboard players operation lootbox_timer mck_timer = kart_check mck_timer
scoreboard players operation lootbox_timer mck_timer %= #10 wasd.constant


scoreboard players add deci mck_timer 1
execute if score deci mck_timer >= drive_tick_rate mck_admin_settings run scoreboard players set deci mck_timer 0

scoreboard players add brake.sound mck_timer 1
execute if score brake.sound mck_timer matches 7.. run scoreboard players set brake.sound mck_timer 0

scoreboard players remove ranking_list mck_timer 1
execute if score ranking_list mck_timer matches ..0 run function mck:ranklist/update_list
execute if score ranking_list mck_timer matches ..0 run scoreboard players operation ranking_list mck_timer = ranking_list_update mck_admin_settings


function mck:ranklist/process