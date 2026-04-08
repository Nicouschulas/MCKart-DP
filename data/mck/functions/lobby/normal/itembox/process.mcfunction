execute store result score temp mck_temp run data get storage temp list1[0].cooldown

execute if score temp mck_temp matches 0 run data modify storage temp itembox set from storage temp list1[0]
execute if score temp mck_temp matches 0 run function mck:itembox/summon


execute if score temp mck_temp matches 1.. run scoreboard players operation temp2 mck_temp = temp mck_temp
execute if score temp mck_temp matches 1.. run scoreboard players remove temp2 mck_temp 1
execute if score temp mck_temp matches 1.. store result storage temp list1[0].cooldown int 1 run scoreboard players get temp2 mck_temp
execute if score temp mck_temp matches 1.. run data modify storage temp list2 append from storage temp list1[0]

data remove storage temp list1[0]
execute if data storage temp list1[0] run function mck:lobby/normal/itembox/process