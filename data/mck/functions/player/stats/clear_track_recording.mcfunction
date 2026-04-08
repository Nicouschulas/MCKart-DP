data remove storage temp list1[0].checkpoint_times
data remove storage temp list1[0].normal_recording
data remove storage temp list1[0].ranked_recording

data modify storage temp list2 append from storage temp list1[0]


data remove storage temp list1[0]
execute if data storage temp list1[0] run function mck:player/stats/clear_track_recording