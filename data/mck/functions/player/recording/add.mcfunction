data remove storage temp player

data modify storage temp player.recording set value []

execute if score @s mck_lobby_type matches 0 run data modify storage temp player.show set from entity @s EnderItems[2].components.track_stats.normal_recording
execute if score @s mck_lobby_type matches 1 run data modify storage temp player.show set from entity @s EnderItems[2].components.track_stats.ranked_recording

execute store result storage temp player.id int 1 run scoreboard players get @s mck_id
execute store result storage temp player.race_id int 1 run scoreboard players get @s mck_race


data modify storage lobby recordings append from storage temp player