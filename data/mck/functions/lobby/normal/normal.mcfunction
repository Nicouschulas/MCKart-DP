execute if score lobby_loops mck_temp matches 1.. run function mck:lobby/normal/normal_function
execute if score lobby_loops mck_temp matches 1.. run data modify storage lobby normal append from storage lobby normal[0]
execute if score lobby_loops mck_temp matches 1.. run data remove storage lobby normal[0]
execute if score lobby_loops mck_temp matches 1.. run scoreboard players remove lobby_loops mck_temp 1
execute if score lobby_loops mck_temp matches 1.. run function mck:lobby/normal/normal