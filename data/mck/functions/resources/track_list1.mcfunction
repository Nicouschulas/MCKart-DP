data modify storage temp list2 set from storage temp list1[0]
execute if data storage temp list2[0] run function mck:resources/track_list2

data remove storage temp list1[0]
execute if data storage temp list1[0] run function mck:resources/track_list1