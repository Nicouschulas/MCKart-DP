data modify storage ranklist sortlist set from storage ranklist templist[0]
data remove storage ranklist templist[0]

data modify storage ranklist sortedlist set value []
data modify storage ranklist best set value {rank_time:100000000}

scoreboard players set sorting mck_timer 0
bossbar set ranklist_sort players @a