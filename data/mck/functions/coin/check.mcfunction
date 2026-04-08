scoreboard players set bool mck_temp 0
data modify storage temp list1 set from storage lobby races

function mck:coin/check_repeat

execute if score bool mck_temp matches 0 run kill @s