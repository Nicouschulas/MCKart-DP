execute store result score temp mck_temp run data get storage temp list1[0].id
execute if score temp mck_temp = @s mck_track run function mck:player/stats/track_stats/update_track
data modify storage temp list2 append from storage temp list1[0]
data remove storage temp list1[0]

execute if data storage temp list1[0] run function mck:player/stats/track_stats/loop