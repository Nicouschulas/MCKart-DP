scoreboard players operation temp mck_temp = @s mck_lobby  
scoreboard players reset blue_id mck_temp  
execute as @e[scores={mck_lobby_status=2,mck_place=1}] if score @s mck_lobby = temp mck_temp unless score blue_id mck_temp = blue_id mck_temp unless score @s mck_blue_id = @s mck_blue_id run function mck:item_function/blue_shell/victim  

execute if score blue_id mck_temp = blue_id mck_temp run summon item_display ~ ~ ~ {Tags:["blue_shell","temp"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[1.6f,1.6f,1.6f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,components:{minecraft:custom_model_data=1006}}}  
execute if score blue_id mck_temp = blue_id mck_temp run execute as @e[tag=temp,type=item_display,limit=1] at @s run function mck:item_function/blue_shell/summon