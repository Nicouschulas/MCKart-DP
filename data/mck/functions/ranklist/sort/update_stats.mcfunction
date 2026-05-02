item replace block 0 0 0 container.0 from entity @s enderchest.4
data modify block 0 0 0 Items[0].components.stats.rank_placing set from storage ranklist best.rank_placing
item replace entity @s enderchest.4 from block 0 0 0 container.0

function mck:player/stats/push_to_db

scoreboard players set online mck_temp 1