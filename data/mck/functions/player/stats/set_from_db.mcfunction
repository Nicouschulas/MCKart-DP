item replace block 0 0 0 container.0 from entity @s enderchest.4
execute unless data block 0 0 0 Items[0].components run item replace block 0 0 0 container.0 with book
data modify block 0 0 0 Items[0].components.stats merge from storage databases output.data.stats
data modify block 0 0 0 Items[0].components.track_stats merge from storage databases output.data.track_stats
item replace entity @s enderchest.4 from block 0 0 0 container.0