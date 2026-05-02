data modify storage temp list set from storage tracks in_use
data remove storage temp tracks

function mck:lobby/sel_track/check_used


item replace block 0 0 0 container.0 with paper 1
item modify block 0 0 0 container.0 mck:rng_1_16
execute store result score rng_count mck_temp run data get block 0 0 0 Items[0].Count

execute if score rng_count mck_temp matches 1.. run data modify storage temp tracks append from storage temp tracks[0]
execute if score rng_count mck_temp matches 1.. run data remove storage temp tracks[0]
execute if score rng_count mck_temp matches 1.. run scoreboard players remove rng_count mck_temp 1

execute if score rng_count mck_temp matches 1.. run data modify storage temp tracks append from storage temp tracks[0]
execute if score rng_count mck_temp matches 1.. run data remove storage temp tracks[0]
execute if score rng_count mck_temp matches 1.. run scoreboard players remove rng_count mck_temp 1

execute if score rng_count mck_temp matches 1.. run data modify storage temp tracks append from storage temp tracks[0]
execute if score rng_count mck_temp matches 1.. run data remove storage temp tracks[0]
execute if score rng_count mck_temp matches 1.. run scoreboard players remove rng_count mck_temp 1

execute if score rng_count mck_temp matches 1.. run data modify storage temp tracks append from storage temp tracks[0]
execute if score rng_count mck_temp matches 1.. run data remove storage temp tracks[0]
execute if score rng_count mck_temp matches 1.. run scoreboard players remove rng_count mck_temp 1

execute if score rng_count mck_temp matches 1.. run data modify storage temp tracks append from storage temp tracks[0]
execute if score rng_count mck_temp matches 1.. run data remove storage temp tracks[0]
execute if score rng_count mck_temp matches 1.. run scoreboard players remove rng_count mck_temp 1

execute if score rng_count mck_temp matches 1.. run data modify storage temp tracks append from storage temp tracks[0]
execute if score rng_count mck_temp matches 1.. run data remove storage temp tracks[0]
execute if score rng_count mck_temp matches 1.. run scoreboard players remove rng_count mck_temp 1

execute if score rng_count mck_temp matches 1.. run data modify storage temp tracks append from storage temp tracks[0]
execute if score rng_count mck_temp matches 1.. run data remove storage temp tracks[0]
execute if score rng_count mck_temp matches 1.. run scoreboard players remove rng_count mck_temp 1

execute if score rng_count mck_temp matches 1.. run data modify storage temp tracks append from storage temp tracks[0]
execute if score rng_count mck_temp matches 1.. run data remove storage temp tracks[0]
execute if score rng_count mck_temp matches 1.. run scoreboard players remove rng_count mck_temp 1

execute if score rng_count mck_temp matches 1.. run data modify storage temp tracks append from storage temp tracks[0]
execute if score rng_count mck_temp matches 1.. run data remove storage temp tracks[0]
execute if score rng_count mck_temp matches 1.. run scoreboard players remove rng_count mck_temp 1

execute if score rng_count mck_temp matches 1.. run data modify storage temp tracks append from storage temp tracks[0]
execute if score rng_count mck_temp matches 1.. run data remove storage temp tracks[0]
execute if score rng_count mck_temp matches 1.. run scoreboard players remove rng_count mck_temp 1

execute if score rng_count mck_temp matches 1.. run data modify storage temp tracks append from storage temp tracks[0]
execute if score rng_count mck_temp matches 1.. run data remove storage temp tracks[0]

execute if data storage temp tracks[0] run data modify storage tracks selections append from storage temp tracks[0]