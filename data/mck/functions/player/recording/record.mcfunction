execute store result score count mck_temp run data get storage lobby recordings
scoreboard players set bool mck_temp 0

execute if score count mck_temp matches 1.. run function mck:player/recording/loop

data modify storage temp recording_frame.pos set from storage temp pos

data modify storage lobby recordings[0].recording append from storage temp recording_frame
tag @s add showme
execute if data storage lobby recordings[0].show[0] positioned 0 0 0 as @e[limit=1,type=marker,tag=data_handler] run function mck:player/recording/show
tag @s remove showme