data modify storage temp enderchest set from entity @s EnderItems
function mck:player/stats/ranked/update_ranking_time
item replace block 0 0 0 container.0 with book
data modify block 0 0 0 Items[0].tag set from storage temp enderchest[4].tag
item replace entity @s enderchest.4 from block 0 0 0 container.0
function mck:player/stats/push_to_db