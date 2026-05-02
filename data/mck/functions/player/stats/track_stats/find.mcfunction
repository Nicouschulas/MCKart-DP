data modify storage temp list1 set from entity @s EnderItems[4].components.track_stats  
data remove storage temp output  
scoreboard players set bool mck_temp 0  

execute if data storage temp list1[0] run function mck:player/stats/track_stats/loop_find  

item replace block 0 0 0 container.0 from entity @s enderchest.2  
data modify block 0 0 0 Items[0].components.track_stats set from storage temp output  
execute store result block 0 0 0 Items[0].components.found_track byte 1 run scoreboard players get bool mck_temp  
item replace entity @s enderchest.2 from block 0 0 0 container.0