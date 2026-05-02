scoreboard players operation temp mck_temp = @s mck_red_id
data modify storage temp pos set from entity @s Pos
scoreboard players set did_connect2 mck_temp 0
execute as @e[tag=red_shell,type=item_display] if score @s mck_red_id matches temp.mck_temp run function mck:item_function/red_shell/did_connect