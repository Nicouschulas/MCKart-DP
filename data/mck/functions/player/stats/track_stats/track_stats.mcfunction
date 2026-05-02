data modify storage temp list1 set from storage temp enderchest[4].tag.track_stats  
data remove storage temp list2  
scoreboard players set bool mck_temp 0  

execute if data storage temp list1[0] run function mck:player/stats/track_stats/loop  
execute if data storage temp list2[0] run data modify storage temp enderchest[4].tag.track_stats set from storage temp list2  

scoreboard players remove safe mck_temp 1  
execute if score bool mck_temp matches 0 if score safe mck_temp matches 1.. run function mck:player/stats/track_stats/add