execute store result score temp2 mck_temp run data get storage temp tracks[0]
function mck:track/rotate_1

execute if score temp1 mck_temp matches 1.. run data remove storage temp tracks[0]
scoreboard players remove temp1 mck_temp 1
execute if score temp1 mck_temp matches 1.. if score bool mck_temp matches 0 run function mck:track/rotate_0