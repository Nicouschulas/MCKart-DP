execute store result score @s mck_last_x run data get entity @s Pos[0]
execute store result score @s mck_last_y run data get entity @s Pos[1]
execute store result score @s mck_last_z run data get entity @s Pos[2]


tp @s -3999912 171 40 180 0

title @s times 0 20 10
title @s subtitle ""
title @s title "\ue000"

stopsound @s ambient
scoreboard players set @s mck_region 19
execute at @s run function mck:player/regions/play

function mck:player/hide_menu

item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"translate":"warp.warp","color":"#8CDDFF","bold":true,"italic":false}'},CustomModelData:11,killme:1b} 1
item replace entity @s hotbar.6 with carrot_on_a_stick{display:{Name:'{"translate":"warp.exit","color":"#FF9782","bold":true,"italic": false}'},killme:1b,CustomModelData:10} 1

tellraw @s [{"text":"[","color":"gray","bold":true},{"translate":"system","color":"gold","bold":false},{"text":"] "},{"translate":"warp.chat","color":"white","bold":false}]