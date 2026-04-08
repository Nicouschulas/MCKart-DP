scoreboard players set bool mck_temp 0
execute store result score temp mck_temp run data get storage temp list1[0].id
data modify storage temp list3 set from storage tracks in_use
execute if data storage temp list3[0] run function mck:player/stats/ranked/check_in_use

execute if score bool mck_temp matches 1 run data modify storage temp list2 append from storage temp list1[0]


data remove storage temp list1[0]
execute if data storage temp list1[0] run function mck:player/stats/ranked/sort