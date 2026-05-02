execute store result score temp mck_temp run data get storage temp list1[0].id
execute if score temp mck_temp = @s mck_lobby store result storage temp itembox.cooldown int 1 run scoreboard players get itemrespawn mck_admin_settings
execute if score temp mck_temp = @s mck_lobby run data modify storage temp itembox.cooldown set value 3
execute if score temp mck_temp = @s mck_lobby run data modify storage temp itembox.pos set from entity @s Pos
execute if score temp mck_temp = @s mck_lobby run data modify storage temp list1[0].itemboxes_list append from storage temp itembox

data modify storage temp list2 append from storage temp list1[0]
data remove storage temp list1[0]
execute if data storage temp list1[0] run function mck:itembox/lobby