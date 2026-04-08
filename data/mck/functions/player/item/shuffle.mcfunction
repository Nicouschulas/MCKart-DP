data modify storage temp table append from storage temp table[0]
data remove storage temp table[0]


scoreboard players remove count mck_temp 1
execute if score count mck_temp matches 1.. run function mck:player/item/shuffle