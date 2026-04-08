data remove storage temp tracks
data remove storage tracks data

data modify storage temp tracks append from block 0 -1 0 Items
data modify storage temp tracks append from block 0 -2 0 Items
data modify storage temp tracks append from block 0 -3 0 Items
data modify storage temp tracks append from block 0 -4 0 Items
data modify storage temp tracks append from block 0 -5 0 Items
data modify storage temp tracks append from block 0 -6 0 Items
data modify storage temp tracks append from block 0 -7 0 Items
data modify storage temp tracks append from block 0 -8 0 Items
data modify storage temp tracks append from block 0 -9 0 Items
data modify storage temp tracks append from block 0 -10 0 Items
data modify storage temp tracks append from block 0 -11 0 Items
data modify storage temp tracks append from block 0 -12 0 Items
data modify storage temp tracks append from block 0 -13 0 Items
data modify storage temp tracks append from block 0 -14 0 Items
data modify storage temp tracks append from block 0 -15 0 Items
data modify storage temp tracks append from block 0 -16 0 Items

function mck:resources/clear_trackdata

data remove storage tracks in_use
data remove storage temp names
data modify storage temp list1 set from storage tracks data
execute if data storage temp list1[0] run function mck:resources/track_list1


data modify storage temp list1 set from storage tracks in_use
execute if data storage temp list1[0] run function mck:resources/check_track_stats

execute store result score time_per_rank mck_data run data get storage tracks in_use
scoreboard players operation time_per_rank mck_data *= time_per_rank mck_admin_settings