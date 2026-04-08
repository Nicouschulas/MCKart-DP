execute store result score temp mck_temp run data get storage lobby recordings[0].id
execute if score temp mck_temp = @s mck_id run scoreboard players set bool mck_temp 1

scoreboard players remove count mck_temp 1
execute if score count mck_temp matches ..0 run scoreboard players set bool mck_temp 1

execute if score bool mck_temp matches 0 run data modify storage lobby recordings append from storage lobby recordings[0]
execute if score bool mck_temp matches 0 run data remove storage lobby recordings[0]
execute if score bool mck_temp matches 0 run function mck:player/recording/loop