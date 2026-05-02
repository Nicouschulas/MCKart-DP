execute store result score temp2 mck_temp run data get storage temp list3[0]
execute if score temp2 mck_temp = temp mck_temp run scoreboard players set bool mck_temp 1
execute if score bool mck_temp matches 1 run data remove storage temp list3

data remove storage temp list3[0]
execute if data storage temp list3[0] run function mck:player/stats/ranked/check_in_use