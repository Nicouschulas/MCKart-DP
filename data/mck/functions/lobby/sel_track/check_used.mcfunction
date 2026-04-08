data modify storage temp used set from storage tracks used
scoreboard players set is_used mck_temp 0

function mck:lobby/sel_track/check_used2

execute if score is_used mck_temp matches 0 run data modify storage temp tracks append from storage temp list[0]
data remove storage temp list[0]

execute if data storage temp list[0] run function mck:lobby/sel_track/check_used