execute if score @s mck_challenge_level matches 2 if score @s mck_quest3 matches 0.. store result score @s mck_quest3 run data get entity @s EnderItems[4].tag.track_stats
execute if score @s mck_challenge_level matches 4 if score @s mck_quest3 matches 0.. store result score @s mck_quest3 run data get entity @s EnderItems[4].tag.stats.rank

execute if score @s mck_challenge_level matches 7 if score @s mck_quest3 matches 0.. store result score @s mck_quest3 run data get entity @s EnderItems[4].tag.stats.rank
execute if score @s mck_challenge_level matches 7 unless score @s mck_quest3 matches ..-1 unless score @s mck_quest3 matches 1..5 run scoreboard players set @s mck_quest3 0

execute if score @s mck_challenge_level matches 8 if score @s mck_quest1 matches 0.. store result score @s mck_quest1 run experience query @s levels

execute if score @s mck_challenge_level matches 10 if score @s mck_quest1 matches 0.. store result score @s mck_quest1 run data get entity @s EnderItems[4].tag.stats.rank
execute if score @s mck_challenge_level matches 10 unless score @s mck_quest1 matches ..-1 unless score @s mck_quest1 matches 1..3 run scoreboard players set @s mck_quest1 0