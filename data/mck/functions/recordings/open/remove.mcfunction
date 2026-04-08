data modify storage temp list1 set from storage recordings ticks
data remove storage temp list2

function mck:recordings/open/remove_repeat

data modify storage recordings ticks set from storage temp list2