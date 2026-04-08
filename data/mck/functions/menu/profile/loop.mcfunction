data modify storage databases output.data.track_stats append from storage databases output.data.track_stats[0]
data remove storage databases output.data.track_stats[0]

scoreboard players remove loop mck_temp 1
execute if score loop mck_temp matches 1.. run function mck:menu/profile/loop