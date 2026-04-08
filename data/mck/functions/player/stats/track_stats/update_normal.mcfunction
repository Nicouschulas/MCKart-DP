execute store result score stat mck_temp run data get storage temp list1[0].n_races_played
scoreboard players add stat mck_temp 1
execute store result storage temp list1[0].n_races_played int 1 run scoreboard players get stat mck_temp

execute store result score stat mck_temp run data get storage temp list1[0].wins
execute if score @s mck_place matches 1 run scoreboard players add stat mck_temp 1
execute store result storage temp list1[0].wins int 1 run scoreboard players get stat mck_temp

execute store result score stat mck_temp run data get storage temp list1[0].n_time_played
scoreboard players operation stat mck_temp += @s mck_timer
execute store result storage temp list1[0].n_time_played int 1 run scoreboard players get stat mck_temp

execute store result score stat2 mck_temp run data get storage temp list1[0].n_races_played
scoreboard players operation stat mck_temp /= stat2 mck_temp
execute store result storage temp list1[0].n_a_time_driven int 1 run scoreboard players get stat mck_temp

execute store result score stat mck_temp run data get storage temp list1[0].n_best_time
scoreboard players set new_best mck_temp 0
execute if score @s mck_timer < stat mck_temp run scoreboard players set new_best mck_temp 1
execute if score new_best mck_temp matches 1 run scoreboard players operation old mck_temp = stat mck_temp
execute if score new_best mck_temp matches 1 run scoreboard players operation new mck_temp = @s mck_timer
execute if score new_best mck_temp matches 1 run scoreboard players operation stat mck_temp = @s mck_timer
execute store result storage temp list1[0].n_best_time int 1 run scoreboard players get stat mck_temp

execute store result score stat mck_temp run data get storage temp list1[0].n_coins_collected
scoreboard players operation stat mck_temp += @s mck_coins
execute store result storage temp list1[0].n_coins_collected int 1 run scoreboard players get stat mck_temp

execute store result score stat2 mck_temp run data get storage temp list1[0].n_races_played
scoreboard players operation stat mck_temp *= #10 mck_time
scoreboard players operation stat mck_temp /= stat2 mck_temp
execute store result storage temp list1[0].n_a_coins_collected float 0.1 run scoreboard players get stat mck_temp

execute store result score stat mck_temp run data get storage temp list1[0].n_items_used
scoreboard players operation stat mck_temp += @s mck_item_uses
execute store result storage temp list1[0].n_items_used int 1 run scoreboard players get stat mck_temp

execute store result score stat2 mck_temp run data get storage temp list1[0].n_races_played
scoreboard players operation stat mck_temp *= #10 mck_time
scoreboard players operation stat mck_temp /= stat2 mck_temp
execute store result storage temp list1[0].n_a_items_used float 0.1 run scoreboard players get stat mck_temp

execute if score new_best mck_temp matches 1.. run data modify storage temp list1[0].normal_recording set from storage lobby recordings[0].recording

execute if score new_best mck_temp matches 1.. run function mck:player/stats/track_stats/new_best