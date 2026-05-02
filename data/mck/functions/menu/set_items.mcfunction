clear @s
execute if score @s mck_lobby_status matches 0 run function mck:player/cosmetic_hand/set
execute unless score @s mck_page matches -7..-5 unless score @s mck_page matches 3 run function mck:menu/bar/bar_set_item

execute if score @s mck_page matches -99 run function mck:menu/admin/items
execute if score @s mck_page matches -10 run function mck:menu/intro/items
execute if score @s mck_page matches -9 run function mck:menu/page_global/items
execute if score @s mck_page matches -8 run function mck:menu/profile/items
execute if score @s mck_page matches -7 run function mck:menu/page_-7/items
execute if score @s mck_page matches -6 run function mck:menu/page_-6/items
execute if score @s mck_page matches -5 run function mck:menu/spec_menu/items

execute if score @s mck_page matches -1 run function mck:menu/page_lobby/page_lobby_items
execute if score @s mck_page matches 0 run function mck:menu/page_play/page_play_items
execute if score @s mck_page matches 1 run function mck:menu/page_tracks/page_tracks_items
execute if score @s mck_page matches 2 run function mck:menu/spectate/items
execute if score @s mck_page matches 3 run function mck:menu/page_cosmetics/items

execute if score @s mck_page matches 5 run function mck:menu/page_stats/items
execute if score @s mck_page matches 6 run function mck:menu/page_settings/settings_items_normal
execute if score @s mck_page matches 7 run function mck:menu/page_challenges/items

item replace entity @s[gamemode=!creative] armor.chest with iron_chestplate[display:{Name:'{"text":" "}'},Unbreakable=1b,killme=1b,CustomModelData=1] 1

item replace block 0 0 0 container.0 with iron_leggings[display:{Name:'{"text":" "}'},Unbreakable=1b,killme=1b] 1

execute store result score temp mck_temp run data get entity @s EnderItems[4].tag.stats.rank
scoreboard players add temp mck_temp 1
execute store result block 0 0 0 Items[0].tag.CustomModelData int 1 run scoreboard players get temp mck_temp

item replace entity @s[gamemode=!creative] armor.legs from block 0 0 0 container.0

item replace entity @s[gamemode=!creative] armor.feet with iron_boots[display:{Name:'{"text": " "}'},Unbreakable=1b,CustomModelData=2,killme=1b]
execute unless score allow_free_drive mck_admin_settings matches 0 if score @s mck_status matches 0 if score @s mck_lobby_status matches 0 unless score @s mck_scene matches 1..17 unless score @s mck_page matches 3 run item replace entity @s[gamemode=!creative] armor.feet with iron_boots[display:{Name:'{"translate":"menu.drive.title","color":"#FFDF78","bold":true,"italic":false}',Lore:['{"text":" "}','{"translate":"menu.drive.lore","color":"gray","italic":false}']},Unbreakable=1b,CustomModelData=1,killme=1b] 1
execute if score allow_free_drive mck_admin_settings matches 0 if score @s mck_status matches 0 if score @s mck_lobby_status matches 0 unless score @s mck_scene matches 1..17 unless score @s mck_page matches 3 run item replace entity @s[gamemode=!creative] armor.feet with iron_boots[display:{Name:'[{"translate":"menu.drive.title","color":"#FFDF78","bold":true,"italic":false},{"text":" "},{"text":"[","color":"gray","bold":true},{"translate":"lobby.setting3.option2","color":"red","bold":true},{"text":"]","color":"gray","bold":true}]',Lore:['{"text":" "}','{"translate":"menu.drive.lore","color":"gray","italic":false}']},Unbreakable=1b,CustomModelData=1,killme=1b] 1

execute unless score @s mck_drive_mode matches 1.. run function mck:player/cosmetic_hat/set