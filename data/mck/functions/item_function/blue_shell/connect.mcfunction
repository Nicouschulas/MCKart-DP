scoreboard players operation temp mck_temp = @s mck_blue_id
data modify storage temp pos set from entity @s Pos
scoreboard players set did_connect mck_temp 0
execute as @e[tag=blue_shell,type=item_display] if score @s mck_blue_id = temp mck_temp run function mck:item_function/blue_shell/did_connect