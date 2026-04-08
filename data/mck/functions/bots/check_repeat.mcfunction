execute store result score temp mck_temp run data get storage temp list1[0]
execute if score @s mck_id = temp mck_temp run scoreboard players set bool mck_temp 1
data remove storage temp list1[0]
execute if data storage temp list1[0] run function mck:bots/check_repeat