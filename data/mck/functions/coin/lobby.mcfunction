execute store result score temp mck_temp run data get storage temp list1[0].id
execute if score temp mck_temp = @s mck_lobby store result storage temp coin.cooldown int 1 run scoreboard players get coinrespawn mck_admin_settings
execute if score temp mck_temp = @s mck_lobby run data modify storage temp coin.pos set from entity @s Pos
execute if score temp mck_temp = @s mck_lobby run data modify storage temp list1[0].coin_list append from storage temp coin

data modify storage temp list2 append from storage temp list1[0]
data remove storage temp list1[0]
execute if data storage temp list1[0] run function mck:coin/lobby