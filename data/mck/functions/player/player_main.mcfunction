# pcd
execute if score @s pcd.enable matches 1 run function pcd:user/main



execute unless score @s mck_id = @s mck_id run function mck:player/give_id


execute if score @s mck_scene_anim matches 1.. run function mck:player/scenes/root
execute unless score @s mck_manager_call matches 0 run function mck:player/scenes/ingame_calls


execute if score @s mck_leave matches 1.. run function mck:player/reset
execute if score @s mck_death matches 1.. run function mck:player/reset
execute if score @s mck_reset_timer matches 1 run function mck:player/final_reset
execute if score @s mck_reset_timer matches 100.. if score is.singleplayer mck_admin_settings matches 1 run function mck:player/resource_loaded
execute if score @s mck_reset_timer matches 1.. run scoreboard players remove @s mck_reset_timer 1


execute if score @s mck_sethead matches 1.. run scoreboard players remove @s mck_sethead 1
execute if score @s mck_sethead matches 1 run function mck:player/set_head


# LOOTBOX
execute if score @s mck_lootbox matches 1.. if score lootbox.anim mck_lootbox matches 58 run function mck:player/lootbox/open


execute if score @s[tag=!nomenu] mck_menudelay matches 1 run function mck:menu/set_items
execute if score @s mck_menudelay matches 1.. run scoreboard players remove @s mck_menudelay 1
execute if score @s mck_lobby_status matches 0 run scoreboard players reset @s mck_race
execute if score @s mck_lobby_status matches 1 run function mck:player/lobby_status_1/main
execute if score @s mck_lobby_status matches 2 run function mck:player/lobby_status_2/main
execute if score @s mck_lobby_status matches 3 run function mck:player/lobby_status_3/main


execute if score @s mck_status matches 1 run function mck:player/drive/drive


execute if score @s mck_status matches 2 if score @s mck_sneak matches 1.. run function mck:player/spectate/leave
execute if score @s mck_status matches 2 run scoreboard players add spec_count mck_spectate 1

execute if score @s mck_super_vote matches 1.. unless score @s mck_lobby matches 1.. run function mck:player/restore_super_votes

execute if score @s mck_status matches -71 run function mck:player/amazon/main
execute if score @s mck_status matches -72 run function mck:player/bob/bob_main



execute if score @s mck_buyconfirm matches 1.. run title @s times 0 3 0
execute if score @s mck_buyconfirm matches 1.. run title @s subtitle {"translate":"shop.warning2","color":"#FF7E5E","bold":true,"italic":false}
execute if score @s mck_buyconfirm matches 1.. run title @s title {"translate":"shop.warning1","color":"#FF4C38","bold":true,"italic":false}
execute if score @s mck_buyconfirm matches 1.. run scoreboard players remove @s mck_buyconfirm 1


# Regions
execute if score kart_check mck_timer matches 30 run function mck:player/regions/update
execute if score @s mck_region_timer matches 1.. run scoreboard players remove @s mck_region_timer 1
execute unless score @s mck_region_timer matches 1.. run function mck:player/regions/play


# Warp
execute if score @s mck_region matches 19 run function mck:player/warp/main


# Parkour
execute if score @s mck_parkour matches 1.. run function mck:parkour/main
execute if score @s mck_region matches 14 if block ~ ~ ~ light_weighted_pressure_plate run scoreboard players set @s mck_parkour 1
execute if score @s mck_region matches 15 if block ~ ~ ~ light_weighted_pressure_plate run scoreboard players set @s mck_parkour 1


execute unless score @s mck_scene matches 1..19 if score @s mck_status matches 0 unless score @s mck_lobby matches 1.. run function mck:player/actionbar




# Last quest
execute if score kart_check mck_timer matches 0 if score @s mck_challenge_level matches 10 if score @s mck_quest3 matches 0 unless score @s mck_scene matches 1..19 if entity @s[x=-770,y=140,z=-1642,dx=17,dy=4,dz=16] run function mck:player/scenes/last_quest




execute if score @s mck_use = @s mck_use run scoreboard players reset @s mck_use
execute if score @s mck_sneak = @s mck_sneak run scoreboard players reset @s mck_sneak




execute if score @s mck_toast_anim matches 1.. run scoreboard players remove @s mck_toast_anim 1
execute if score @s mck_toast_anim matches 1 run function mck:player/revoke_shop_toast