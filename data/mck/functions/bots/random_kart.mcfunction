data modify storage temp list append from storage temp list[0]
data remove storage temp list[0]

scoreboard players remove random_loops mck_temp 1
execute if score random_loops mck_temp matches 1.. run function mck:bots/random_kart