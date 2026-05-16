scoreboard players set cmd mck_temp -152545423
data modify storage temp list set from entity @s EnderItems[5].components."minecraft:custom_data".menu_goods
data modify storage temp list1 set value []
execute unless score @s mck_player_menu matches 2 if score slot mck_temp matches 0 run data get storage temp list[0].data.icon.components."minecraft:custom_model_data" store result score cmd mck_temp
execute if score slot mck_temp matches 1 run data get storage temp list[1].data.icon.components."minecraft:custom_model_data" store result score cmd mck_temp
execute if score slot mck_temp matches 2 run data get storage temp list[2].data.icon.components."minecraft:custom_model_data" store result score cmd mck_temp
execute if score slot mck_temp matches 3 run data get storage temp list[3].data.icon.components."minecraft:custom_model_data" store result score cmd mck_temp
execute if score slot mck_temp matches 4 run data get storage temp list[4].data.icon.components."minecraft:custom_model_data" store result score cmd mck_temp
execute if score slot mck_temp matches 5 run data get storage temp list[5].data.icon.components."minecraft:custom_model_data" store result score cmd mck_temp
execute if score slot mck_temp matches 6 run data get storage temp list[6].data.icon.components."minecraft:custom_model_data" store result score cmd mck_temp
execute if score @s mck_player_menu matches 2 if score slot mck_temp matches 4 run data get storage temp list[0].data.icon.components."minecraft:custom_model_data" store result score cmd mck_temp
execute unless score @s mck_player_menu matches 2 if score slot mck_temp matches 0 run data modify storage temp list1 set from storage temp list[0].data.children
execute unless score @s mck_player_menu matches 2 if score slot mck_temp matches 0 run data get storage temp list[0].data.id store result storage temp temp int 1
execute unless score @s mck_player_menu matches 2 if score slot mck_temp matches 0 run data modify storage temp list1 prepend from storage temp temp
execute if score slot mck_temp matches 1 run data modify storage temp list1 set from storage temp list[1].data.children
execute if score slot mck_temp matches 1 run data get storage temp list[1].data.id store result storage temp temp int 1
execute if score slot mck_temp matches 1 run data modify storage temp list1 prepend from storage temp temp
execute if score slot mck_temp matches 2 run data modify storage temp list1 set from storage temp list[2].data.children
execute if score slot mck_temp matches 2 run data get storage temp list[2].data.id store result storage temp temp int 1
execute if score slot mck_temp matches 2 run data modify storage temp list1 prepend from storage temp temp
execute if score slot mck_temp matches 3 run data modify storage temp list1 set from storage temp list[3].data.children
execute if score slot mck_temp matches 3 run data get storage temp list[3].data.id store result storage temp temp int 1
execute if score slot mck_temp matches 3 run data modify storage temp list1 prepend from storage temp temp
execute if score slot mck_temp matches 4 run data modify storage temp list1 set from storage temp list[4].data.children
execute if score slot mck_temp matches 4 run data get storage temp list[4].data.id store result storage temp temp int 1
execute if score slot mck_temp matches 4 run data modify storage temp list1 prepend from storage temp temp
execute if score slot mck_temp matches 5 run data modify storage temp list1 set from storage temp list[5].data.children
execute if score slot mck_temp matches 5 run data get storage temp list[5].data.id store result storage temp temp int 1
execute if score slot mck_temp matches 5 run data modify storage temp list1 prepend from storage temp temp
execute if score slot mck_temp matches 6 run data modify storage temp list1 set from storage temp list[6].data.children
execute if score slot mck_temp matches 6 run data get storage temp list[6].data.id store result storage temp temp int 1
execute if score slot mck_temp matches 6 run data modify storage temp list1 prepend from storage temp temp
execute if data storage temp list1[0] run scoreboard players set cmd mck_temp -152545423
execute if data storage temp list1[0] run function mck:menu/page_cosmetics/child/get
execute unless score cmd mck_temp matches -152545423 if score @s mck_player_menu matches 1 run scoreboard players operation @s mck_kart_model = cmd mck_temp
execute unless score cmd mck_temp matches -152545423 if score @s mck_player_menu matches 2 run function mck:coin_multiplier/used
execute unless score cmd mck_temp matches -152545423 if score @s mck_player_menu matches 3 run scoreboard players operation @s mck_handheld_model = cmd mck_temp
execute unless score cmd mck_temp matches -152545423 if score @s mck_player_menu matches 3 run function mck:player/cosmetic_hand/update
execute unless score cmd mck_temp matches -152545423 if score @s mck_player_menu matches 4 run scoreboard players operation @s mck_hat_model = cmd mck_temp
execute unless score cmd mck_temp matches -152545423 if score @s mck_player_menu matches 4 run function mck:player/cosmetic_hat/update
execute unless score cmd mck_temp matches -152545423 if score @s mck_player_menu matches 5 run scoreboard players operation @s mck_audio_pack = cmd mck_temp
execute unless score cmd mck_temp matches -152545423 if score @s mck_player_menu matches 6 run scoreboard players operation @s mck_glider_model = cmd mck_temp
execute unless score cmd mck_temp matches -152545423 if score @s mck_player_menu matches 7 run scoreboard players operation @s mck_trail = cmd mck_temp
execute if score cmd mck_temp matches -152545423 run scoreboard players set clear mck_temp 4