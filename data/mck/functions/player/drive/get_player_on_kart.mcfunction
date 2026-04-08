tag @s add now
scoreboard players operation temp mck_temp = @s mck_id
execute unless score @s mck_lobby_status matches 2 as @e[tag=kart,type=fox] if score @s mck_id = temp mck_temp run ride @p[tag=now] mount @s
execute if score @s mck_lobby_status matches 2 run data modify storage temp last_pos set from entity @s EnderItems[3].tag.last_pos
execute if score @s mck_lobby_status matches 2 run data modify storage temp last_rot set from entity @s EnderItems[3].tag.last_rot
execute if score @s mck_lobby_status matches 2 as @e[tag=kart,type=fox] if score @s mck_id = temp mck_temp run function mck:player/drive/kart_to_last_pos
execute if score @s mck_lobby_status matches 2 if score @s mck_pipe matches 1.. on vehicle at @s run summon item_display ~ ~3 ~ {Rotation:[0F,-90F],Tags:["pipe"],transformation:{left_rotation:[-1f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[4f,4f,4f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1015}}}
tag @s remove now
execute at @s run function mck:player/drive/audio_to_check