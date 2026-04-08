execute store result score temp mck_temp run data get storage tracks used[0]
scoreboard players remove temp2 mck_temp 1

execute if score temp mck_temp = used_id mck_temp run scoreboard players set bool mck_temp 1

execute if score bool mck_temp matches 1 run data remove storage tracks used[0]

execute if score bool mck_temp matches 0 run data modify storage tracks used append from storage tracks used[0]
execute if score bool mck_temp matches 0 run data remove storage tracks used[0]


execute if score bool mck_temp matches 0 if score temp2 mck_temp matches 1.. run function mck:track/remove_used_repeat