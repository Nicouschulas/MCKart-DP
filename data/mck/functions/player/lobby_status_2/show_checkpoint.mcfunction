data modify entity @s Pos set from storage temp enderchest[3].tag.checkpoints[0][2]
execute at @s run particle composter ~0.5 ~ ~0.5 0 1 0 0 5 normal @s
kill @s