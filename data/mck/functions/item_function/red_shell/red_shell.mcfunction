scoreboard players operation temp mck_temp = @s mck_lobby
scoreboard players operation temp2 mck_temp = @s mck_place
scoreboard players reset red_id mck_temp
scoreboard players remove temp2 mck_temp 1
execute as @e[scores={mck_lobby_status=2,mck_place=..11}] if score @s mck_lobby = temp mck_temp if score @s mck_place = temp2 mck_temp unless score red_id mck_temp = red_id mck_temp unless score @s mck_red_id = @s mck_red_id run function mck:item_function/red_shell/victim

execute unless score red_id mck_temp = red_id mck_temp run scoreboard players remove temp2 mck_temp 1
execute unless score red_id mck_temp = red_id mck_temp run execute as @e[scores={mck_lobby_status=2,mck_place=..11}] if score @s mck_lobby = temp mck_temp if score @s mck_place = temp2 mck_temp unless score red_id mck_temp = red_id mck_temp unless score @s mck_red_id = @s mck_red_id run function mck:item_function/red_shell/victim

execute unless score red_id mck_temp = red_id mck_temp run scoreboard players remove temp2 mck_temp 1
execute unless score red_id mck_temp = red_id mck_temp run execute as @e[scores={mck_lobby_status=2,mck_place=..11}] if score @s mck_lobby = temp mck_temp if score @s mck_place = temp2 mck_temp unless score red_id mck_temp = red_id mck_temp unless score @s mck_red_id = @s mck_red_id run function mck:item_function/red_shell/victim

execute unless score red_id mck_temp = red_id mck_temp run scoreboard players remove temp2 mck_temp 1
execute unless score red_id mck_temp = red_id mck_temp run execute as @e[scores={mck_lobby_status=2,mck_place=..11}] if score @s mck_lobby = temp mck_temp if score @s mck_place = temp2 mck_temp unless score red_id mck_temp = red_id mck_temp unless score @s mck_red_id = @s mck_red_id run function mck:item_function/red_shell/victim

execute unless score red_id mck_temp = red_id mck_temp run scoreboard players remove temp2 mck_temp 1
execute unless score red_id mck_temp = red_id mck_temp run execute as @e[scores={mck_lobby_status=2,mck_place=..11}] if score @s mck_lobby = temp mck_temp if score @s mck_place = temp2 mck_temp unless score red_id mck_temp = red_id mck_temp unless score @s mck_red_id = @s mck_red_id run function mck:item_function/red_shell/victim

execute if score @s mck_challenge_level matches 5 if score @s mck_quest3 matches 0.. run scoreboard players add @s mck_quest3 1

execute if score red_id mck_temp = red_id mck_temp run summon item_display ~ ~ ~ {Tags:["red_shell","temp"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[1.6f,1.6f,1.6f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1007}}}
execute if score red_id mck_temp = red_id mck_temp run execute as @e[tag=temp,type=item_display,limit=1] at @s run function mck:item_function/red_shell/summon