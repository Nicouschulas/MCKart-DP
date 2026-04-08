execute if score lobby_loops mck_temp matches 1.. run function mck:lobby/ranked/ranked_function
execute if score lobby_loops mck_temp matches 1.. run data modify storage lobby ranked append from storage lobby ranked[0]
execute if score lobby_loops mck_temp matches 1.. run data remove storage lobby ranked[0]
execute if score lobby_loops mck_temp matches 1.. run scoreboard players remove lobby_loops mck_temp 1
execute if score lobby_loops mck_temp matches 1.. run function mck:lobby/ranked/ranked