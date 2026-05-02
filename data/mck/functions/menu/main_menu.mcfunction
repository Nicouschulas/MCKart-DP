execute if score @s mck_menudelay matches 0 run data modify storage menu inv set from entity @s Inventory

execute if score @s mck_menudelay matches 0 unless score @s mck_page matches -7..-5 unless score @s mck_page matches 3 unless score @s mck_page matches -10 run function mck:menu/bar/bar_check

execute if score @s mck_menudelay matches 0 run execute if score @s mck_page matches -99 run function mck:menu/admin/check
execute if score @s mck_menudelay matches 0 run execute if score @s mck_page matches -10 run function mck:menu/intro/check
execute if score @s mck_menudelay matches 0 run execute if score @s mck_page matches -9 run function mck:menu/page_global/check
execute if score @s mck_menudelay matches 0 run execute if score @s mck_page matches -8 run function mck:menu/profile/check
execute if score @s mck_menudelay matches 0 run execute if score @s mck_page matches -7 run function mck:menu/page_-7/check
execute if score @s mck_menudelay matches 0 run execute if score @s mck_page matches -6 run function mck:menu/page_-6/check
execute if score @s mck_menudelay matches 0 run execute if score @s mck_page matches -5 run function mck:menu/spec_menu/check
execute if score @s mck_menudelay matches 0 run execute if score @s mck_page matches -1 run function mck:menu/page_lobby/page_lobby_check
execute if score @s mck_menudelay matches 0 run execute if score @s mck_page matches 0 run function mck:menu/page_play/page_play_check
execute if score @s mck_menudelay matches 0 run execute if score @s mck_page matches 1 run function mck:menu/page_tracks/page_tracks_check
execute if score @s mck_menudelay matches 0 run execute if score @s mck_page matches 2 run function mck:menu/spectate/check
execute if score @s mck_menudelay matches 0 run execute if score @s mck_page matches 3 run function mck:menu/page_cosmetics/check

execute if score @s mck_menudelay matches 0 run execute if score @s mck_page matches 5 run function mck:menu/page_stats/check
execute if score @s mck_menudelay matches 0 run execute if score @s mck_page matches 6 run function mck:menu/page_settings/settings_check_normal
execute if score @s mck_menudelay matches 0 run execute if score @s mck_page matches 7 run function mck:menu/page_challenges/check

execute unless score allow_free_drive mck_admin_settings matches 0 if score @s[gamemode=!creative] mck_menudelay matches 0 unless data storage menu inv[{Slot:100b}] if score @s mck_status matches 0 if score @s mck_lobby_status matches 0 unless score @s mck_scene matches 1..17 run playsound ui.button.click master @s[scores={mck_setting1=1}] ~ ~ ~ 0.3 0.9
execute unless score allow_free_drive mck_admin_settings matches 0 if score @s[gamemode=!creative] mck_menudelay matches 0 unless data storage menu inv[{Slot:100b}] if score @s mck_status matches 0 if score @s mck_lobby_status matches 0 unless score @s mck_scene matches 1..17 run function driver:join
execute if score @s[gamemode=!creative] mck_menudelay matches 0 unless data storage menu inv[{Slot:101b}] run function mck:menu/draw
execute if score @s[gamemode=!creative] mck_menudelay matches 0 unless data storage menu inv[{Slot:102b}] run function mck:menu/draw

execute if score @s mck_menudelay matches 0 unless score @s mck_drive_mode matches 1.. if score @s mck_hat_model matches 1.. unless data storage menu inv[{Slot:103b}] run function mck:menu/draw
execute if score @s mck_menudelay matches 0 if score @s mck_lobby_status matches 0 if score @s mck_handheld_model matches 1.. unless data storage menu inv[{Slot:-106b}] run scoreboard players set @s mck_menudelay 10