data modify storage tracks selections append from storage tracks selections[0]
data remove storage tracks selections[0]
scoreboard players remove temp mck_temp 1
execute if score temp mck_temp matches 1.. run function mck:lobby/sel_track/get_rng