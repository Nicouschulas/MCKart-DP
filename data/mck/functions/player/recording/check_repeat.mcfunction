execute store result score temp mck_temp run data get storage temp list1[0]
execute store result score temp2 mck_temp run data get storage lobby recordings[0].race_id
execute if score temp2 mck_temp = temp mck_temp run scoreboard players set bool mck_temp 1
data remove storage temp list1[0]
execute if data storage temp list1[0] run function mck:player/recording/check_repeat