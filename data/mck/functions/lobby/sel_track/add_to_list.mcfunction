data remove storage temp temp
data remove storage temp list
data remove storage temp tracks

execute store result storage temp temp byte 1 run scoreboard players get @s mck_sel_track
data modify storage temp list append from storage temp temp

execute if score @s mck_sel_track matches 1.. run function mck:lobby/sel_track/check_used



execute if data storage temp tracks[0] if score @s mck_sel_track matches 1.. store result storage temp sel byte 1 run scoreboard players get @s mck_sel_track
execute if data storage temp tracks[0] if score @s mck_sel_track matches 1.. run scoreboard players add @s mck_super_vote 1
execute if data storage temp tracks[0] if score @s mck_sel_track matches 1.. run function mck:lobby/sel_track/append