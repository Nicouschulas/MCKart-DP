execute store result score _temp mck_temp run data get storage temp used[0]
execute store result score _temp2 mck_temp run data get storage temp list[0]

execute if score _temp mck_temp = _temp2 mck_temp run scoreboard players set is_used mck_temp 1


data remove storage temp used[0]
execute if data storage temp used[0] run function mck:lobby/sel_track/check_used2