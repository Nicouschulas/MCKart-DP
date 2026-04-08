data remove storage temp new_track

execute store result storage temp new_track.id byte 1 run scoreboard players get @s mck_track
data modify storage temp new_track.name set from storage temp enderchest[2].tag.data.icon.tag.display.Name
data modify storage temp new_track.icon set from storage temp enderchest[2].tag.data.icon
data modify storage temp new_track.n_best_time set value 100000000
data modify storage temp new_track.r_best_time set value 100000000

data modify storage temp new_track.games_played set value 0
data modify storage temp new_track.n_races_played set value 0
data modify storage temp new_track.r_races_played set value 0
data modify storage temp new_track.wins set value 0
data modify storage temp new_track.n_time_played set value 0
data modify storage temp new_track.r_time_played set value 0
data modify storage temp new_track.n_a_time_driven set value 0
data modify storage temp new_track.r_a_time_driven set value 0
data modify storage temp new_track.n_coins_collected set value 0
data modify storage temp new_track.r_coins_collected set value 0
data modify storage temp new_track.n_a_coins_collected set value 0.0f
data modify storage temp new_track.r_a_coins_collected set value 0.0f
data modify storage temp new_track.n_items_used set value 0
data modify storage temp new_track.r_items_used set value 0
data modify storage temp new_track.n_a_items_used set value 0.0f
data modify storage temp new_track.r_a_items_used set value 0.0f

data modify storage temp enderchest[4].tag.track_stats append from storage temp new_track
function mck:player/stats/track_stats/track_stats