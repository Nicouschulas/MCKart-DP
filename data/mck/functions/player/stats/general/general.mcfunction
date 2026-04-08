scoreboard players set bool mck_temp 0

execute store result score stat mck_temp run data get storage temp enderchest[4].tag.stats.games_played
scoreboard players add stat mck_temp 1
execute store result storage temp enderchest[4].tag.stats.games_played int 1 run scoreboard players get stat mck_temp

execute store result score stat mck_temp run data get storage temp enderchest[4].tag.stats.coins_collected
scoreboard players operation stat mck_temp += @s mck_coins
function mck:best_players/best2_check
execute store result storage temp enderchest[4].tag.stats.coins_collected int 1 run scoreboard players get stat mck_temp

execute store result score stat mck_temp run data get storage temp enderchest[4].tag.stats.shrooms_used
scoreboard players operation stat mck_temp += @s mck_shrooms_used
function mck:best_players/best3_check
execute store result storage temp enderchest[4].tag.stats.shrooms_used int 1 run scoreboard players get stat mck_temp

execute if score @s mck_lobby_type matches 0 run function mck:player/stats/general/normal

execute if score @s mck_lobby_type matches 1 run function mck:player/stats/general/ranked