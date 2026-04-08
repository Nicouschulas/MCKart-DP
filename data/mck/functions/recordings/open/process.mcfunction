data modify storage recordings ticks append from storage recordings ticks[0]
data remove storage recordings ticks[0]

data modify storage temp list1 set from storage recordings ticks[0]
data modify storage temp list2 set value []

execute if data storage temp list1[0] at @s run function mck:recordings/open/process_repeat

data modify storage recordings ticks[0] set from storage temp list2

kill @s