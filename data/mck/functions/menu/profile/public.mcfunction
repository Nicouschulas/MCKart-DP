execute store result score time1 mck_temp run data get storage databases output.data.stats.n_time_played
execute store result score time2 mck_temp run data get storage databases output.data.stats.r_time_played
scoreboard players operation total mck_temp = time1 mck_temp
scoreboard players operation total mck_temp += time2 mck_temp

scoreboard players operation time mck_time = time1 mck_temp
scoreboard players set skip_digits mck_time 1
function mck:time/calc
data modify storage temp time1 set from storage time time

scoreboard players operation time mck_time = time2 mck_temp
scoreboard players set skip_digits mck_time 1
function mck:time/calc2
data modify storage temp time2 set from storage time time

scoreboard players operation time mck_time = total mck_temp
scoreboard players set skip_digits mck_time 1
function mck:time/calc3
data modify storage temp total set from storage time time

execute store result score temp mck_temp run data get storage databases output.data.stats.challenge_level
execute if score temp mck_temp matches ..10 run data modify storage temp temp set value '{"nbt":"output.data.stats.challenge_level","storage":"databases","color":"#C9F1FF"}'
execute if score temp mck_temp matches 11.. run data modify storage temp temp set value '{"translate":"menu.profile.stats.challenge_completed","color":"#FFEF87"}'

item modify block 0 0 0 container.0 mck:profile_public

scoreboard players set tracks_show mck_temp 7
execute store result score count mck_temp run data get storage databases output.data.track_stats

scoreboard players operation @s mck_player_track_menu %= count mck_temp
scoreboard players operation loop mck_temp = @s mck_player_track_menu
execute if score loop mck_temp matches 1.. run function mck:menu/profile/loop
execute if score tracks_show mck_temp matches 1.. if score count mck_temp matches 1.. run function mck:menu/profile/show_tracks