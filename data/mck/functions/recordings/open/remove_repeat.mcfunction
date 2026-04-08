data modify storage temp _list1 set from storage temp list1[0]
data remove storage temp _list2

function mck:recordings/open/remove_repeat2

data modify storage temp list2[0] append from storage temp _list2
data remove storage temp list1[0]

execute if data storage temp list1[0] run function mck:recordings/open/remove_repeat