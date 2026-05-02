item replace block 0 0 0 container.1 with paper
data modify block 0 0 0 Items[0].id set from storage databases output.data.track_stats[0].icon.id
data modify block 0 0 0 Items[0].components set from storage databases output.data.track_stats[0].icon.components


execute store result score time mck_time run data get storage databases output.data.track_stats[0].n_time_played
scoreboard players set skip_digits mck_time 1
function mck:time/calc
data modify storage temp time2 set from storage time time

scoreboard players operation time1 mck_temp = time mck_time

execute store result score time mck_time run data get storage databases output.data.track_stats[0].r_time_played
scoreboard players set skip_digits mck_time 1
function mck:time/calc2
data modify storage temp time3 set from storage time time

scoreboard players operation time mck_time += time1 mck_temp
scoreboard players set skip_digits mck_time 1
function mck:time/calc3
data modify storage temp time1 set from storage time time

execute store result score time mck_time run data get storage databases output.data.track_stats[0].n_best_time
execute if score time mck_time matches 100000000 run scoreboard players set time mck_time 0
function mck:time/calc4
data modify storage temp time4 set from storage time time

execute store result score time mck_time run data get storage databases output.data.track_stats[0].r_best_time
execute if score time mck_time matches 100000000 run scoreboard players set time mck_time 0
function mck:time/calc5
data modify storage temp time5 set from storage time time

execute store result score time mck_time run data get storage databases output.data.track_stats[0].n_a_time_driven
function mck:time/calc6
data modify storage temp time6 set from storage time time

execute store result score time mck_time run data get storage databases output.data.track_stats[0].r_a_time_driven
function mck:time/calc7
data modify storage temp time7 set from storage time time



data modify storage databases output2 set from storage databases output
execute store result score in mck_db_bit run data get storage databases output2.data.track_stats[0].id
function mck:database/track_find
execute store result score temp mck_temp run data get storage databases output.data.r_best.time
data modify storage databases output set from storage databases output2
execute store result score time mck_time run data get storage databases output.data.track_stats[0].r_best_time
scoreboard players operation time mck_time -= temp mck_temp
scoreboard players set has_record mck_temp 0
execute if score time mck_time matches 0 run scoreboard players set has_record mck_temp 1
function mck:time/calc8
data modify storage temp time8 set from storage time time
execute if score time mck_time matches 99000000.. run data remove storage temp time8
execute if score time mck_time matches 99000000.. run data modify storage temp time8 append value '{"translate":"menu.profile.track_stats.diff_never_played"}'



execute store result score coins mck_temp run data get storage databases output.data.track_stats[0].n_coins_collected
execute store result score temp mck_temp run data get storage databases output.data.track_stats[0].r_coins_collected
scoreboard players operation coins mck_temp += temp mck_temp

execute store result score items mck_temp run data get storage databases output.data.track_stats[0].n_items_used
execute store result score temp mck_temp run data get storage databases output.data.track_stats[0].r_items_used
scoreboard players operation items mck_temp += temp mck_temp

execute if score has_record mck_temp matches 0 run item modify block 0 0 0 container.1 mck:profile_track_stats
execute if score has_record mck_temp matches 1 run item modify block 0 0 0 container.1 mck:_profile_track_stats

data modify block 0 0 0 Items[0].components.killme set value 1b
execute if score tracks_show mck_temp matches 7 run item replace entity @s inventory.19 from block 0 0 0 container.1
execute if score tracks_show mck_temp matches 6 run item replace entity @s inventory.20 from block 0 0 0 container.1
execute if score tracks_show mck_temp matches 5 run item replace entity @s inventory.21 from block 0 0 0 container.1
execute if score tracks_show mck_temp matches 4 run item replace entity @s inventory.22 from block 0 0 0 container.1
execute if score tracks_show mck_temp matches 3 run item replace entity @s inventory.23 from block 0 0 0 container.1
execute if score tracks_show mck_temp matches 2 run item replace entity @s inventory.24 from block 0 0 0 container.1
execute if score tracks_show mck_temp matches 1 run item replace entity @s inventory.25 from block 0 0 0 container.1

data remove storage databases output.data.track_stats[0]

execute unless data storage databases output.data.track_stats[0] run scoreboard players set tracks_show mck_temp 0


scoreboard players remove tracks_show mck_temp 1
execute if score tracks_show mck_temp matches 1.. run function mck:menu/profile/show_tracks