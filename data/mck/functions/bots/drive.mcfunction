tag @s add now


# tumble
execute if score @s mck_tumble matches 12 run function mck:player/drive/loose_coins
execute if score @s mck_tumble matches 1.. run scoreboard players remove @s mck_tumble 1



tag @s add collector

# coins
execute if score @s mck_lobby_status matches 2 run scoreboard players operation id mck_temp = @s mck_id
execute if score @s mck_lobby_status matches 2 as @e[type=item,tag=coin,tag=!stun_coin,limit=1,distance=..0.8] unless score @s mck_spectate = id mck_temp at @s run function mck:coin/collect

# itemboxes
scoreboard players set type mck_temp 0
execute if score @s mck_lobby_status matches 2 positioned ~ ~0.6 ~ as @e[type=end_crystal,tag=itembox,limit=1,distance=..1.1] at @s run function mck:itembox/collect

# banana
execute if score @s mck_lobby_status matches 2 as @e[type=item,tag=banana,limit=1,distance=..0.8,scores={mck_timer=..0}] at @s run function mck:item_function/banana/banana_collect

# fake itemboxes
execute if score @s mck_lobby_status matches 2 as @e[type=end_crystal,tag=fake_itembox,limit=1,distance=..1.1,scores={mck_timer=..0}] at @s run function mck:item_function/fake-itembox/collect

tag @s remove collector


# shell trail
execute if score @s mck_lobby_status matches 2 run function mck:bots/drive/shell_trail
execute if score @s mck_blue_id matches 1.. run function mck:item_function/blue_shell/connect
execute if score @s mck_red_id matches 1.. run function mck:item_function/red_shell/connect



# blue shell
execute if score @s mck_blue_id matches 1.. run function mck:item_function/blue_shell/collect

# red shell
execute if score @s mck_red_id matches 1.. run function mck:item_function/red_shell/collect



execute store result score temp mck_temp run data get entity @s Pos[1] 10
scoreboard players operation @s mck_y_pos -= temp mck_temp

execute if score @s mck_y_pos matches 1.. if score @s mck_x_rot matches ..-1 run scoreboard players set @s mck_x_rot 0
execute if score @s mck_y_pos matches 1.. if score @s mck_x_rot matches ..9 run scoreboard players add @s mck_x_rot 2
execute if score @s mck_y_pos matches ..-1 if score @s mck_x_rot matches 1.. run scoreboard players set @s mck_x_rot 0
execute if score @s mck_y_pos matches ..-1 if score @s mck_x_rot matches -7.. run scoreboard players remove @s mck_x_rot 3

execute if score @s mck_y_pos matches 0 if score @s mck_x_rot matches 1.. run scoreboard players remove @s mck_x_rot 1
execute if score @s mck_y_pos matches 0 if score @s mck_x_rot matches ..-1 run scoreboard players add @s mck_x_rot 1

execute store result entity @s Rotation[1] float 1.68 run scoreboard players get @s mck_x_rot
scoreboard players operation @s mck_y_pos = temp mck_temp




# calc speed
function mck:bots/drive/calc_speed



data modify storage temp tag set from entity @s HandItems[0].tag

# Facing to Bot Checkpoint
data modify storage temp pos set from storage temp tag.bot_focus

execute if score @s mck_time matches 180.. run data modify entity @s Pos set from storage temp pos

execute positioned 0 0 0 as @e[type=marker,tag=data_handler,limit=1] run function mck:bots/facing/main_focus
execute store result score dir mck_dir run data get storage temp rotation[0]



# star
execute if score @s mck_star matches 1.. run function mck:item_function/star/main

# leaf
execute if score @s mck_leaf matches 1.. run scoreboard players remove @s mck_leaf 1
execute if score @s mck_leaf matches ..0 run scoreboard players reset @s mck_leaf

# pipe
execute if score @s mck_pipe matches 1.. run function mck:item_function/pipe/main



# wenn itembox collected
execute if score @s mck_itembox matches 1.. run function mck:bots/item/collect


# item main
scoreboard players operation temp mck_temp = @s mck_item1
scoreboard players operation temp mck_temp += @s mck_item2
execute if score temp mck_temp matches 1.. run function mck:bots/item/main



# drive
function mck:bots/drive/kart_drive

# check bot checkpoints
function mck:bots/check_checkpoint

data modify storage temp pos set from storage temp tag.checkpoints
execute if score @s mck_lobby_status matches 2 run function mck:bots/checkpoints/check_checkpoint


tag @s remove now