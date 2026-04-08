execute if score @s mck_place > @s mck_players run scoreboard players operation @s mck_place = @s mck_players
function mck:player/hide_menu
stopsound @s master


data modify storage temp place set value '{"text":"\\uab12    "}'
execute if score @s mck_place matches 1 run data modify storage temp place set value '{"text":"\\uabc1"}'
execute if score @s mck_place matches 2 run data modify storage temp place set value '{"text":"\\uabc2"}'
execute if score @s mck_place matches 3 run data modify storage temp place set value '{"text":"\\uabc3"}'
execute if score @s mck_place matches 4 run data modify storage temp place set value '{"text":"\\uabc4"}'
execute if score @s mck_place matches 5 run data modify storage temp place set value '{"text":"\\uabc5"}'
execute if score @s mck_place matches 6 run data modify storage temp place set value '{"text":"\\uabc6"}'
execute if score @s mck_place matches 7 run data modify storage temp place set value '{"text":"\\uabc7"}'
execute if score @s mck_place matches 8 run data modify storage temp place set value '{"text":"\\uabc8"}'
execute if score @s mck_place matches 9 run data modify storage temp place set value '{"text":"\\uabc9"}'
execute if score @s mck_place matches 10 run data modify storage temp place set value '{"text":"\\uab10"}'
execute if score @s mck_place matches 11 run data modify storage temp place set value '{"text":"\\uab11"}'
execute if score @s mck_place matches 12 run data modify storage temp place set value '{"text":"\\uab12"}'
data modify storage temp name set from entity @s EnderItems[1].tag.SkullOwner.Name


scoreboard players operation temp mck_temp = @s mck_lobby
scoreboard players operation temp2 mck_temp = @s mck_track
tag @s add notme
scoreboard players set bool mck_temp 0
execute as @e[scores={mck_lobby_status=2}] if score @s mck_lobby = temp mck_temp run scoreboard players add @s mck_place_pre 1
execute if score @s mck_lobby_type matches 0 as @a[scores={mck_lobby_status=1..},tag=!notme] if score @s mck_track = temp2 mck_temp run function mck:player/lobby_status_2/finish_chat
tag @s remove notme
scoreboard players set @s mck_lobby_status 3
scoreboard players set @s mck_finish_anim 160
scoreboard players set @s mck_tumble 0


# Community stats
scoreboard players operation playtime mck_community += @s mck_timer


# Platzierungs Coins
scoreboard players set temp mck_temp 1
scoreboard players operation temp mck_temp += @s mck_players
scoreboard players operation temp mck_temp -= @s mck_place
scoreboard players operation @s mck_coins += temp mck_temp

# Coin multiplier
scoreboard players operation @s mck_coin_multiplier = @s mck_coins
scoreboard players set temp mck_temp 5
scoreboard players operation temp mck_temp *= level mck_coin_multiplier
scoreboard players add temp mck_temp 10
scoreboard players operation @s mck_coin_multiplier *= temp mck_temp
scoreboard players operation @s mck_coin_multiplier /= #10 mck_time
scoreboard players operation @s mck_coin_multiplier -= @s mck_coins
execute if score @s mck_coin_multiplier matches ..-1 run scoreboard players set @s mck_coin_multiplier 0
scoreboard players operation @s mck_coins += @s mck_coin_multiplier
execute if score @s mck_coins matches ..-1 run scoreboard players set @s mck_coins 0
scoreboard players operation @s mck_bank += @s mck_coins


scoreboard players add @s mck_kart_fragments 2
experience add @s 5 points

tag @s add did_finish



# stats

data modify storage temp enderchest set from entity @s EnderItems
function mck:player/recording/record

# general
function mck:player/stats/general/general

# public tracks
function mck:player/stats/public_tracks/public_tracks

# track stats
scoreboard players set safe mck_temp 5
function mck:player/stats/track_stats/track_stats

# ranking list
execute if score @s mck_lobby_type matches 1 run function mck:player/stats/ranked/update_ranking_time


item replace block 0 0 0 container.0 with book
data modify block 0 0 0 Items[0].tag set from storage temp enderchest[4].tag
item replace entity @s enderchest.4 from block 0 0 0 container.0


function mck:player/stats/push_to_db
function mck:player/team/normal


# challenge
execute if score @s mck_challenge_level matches 1 if score @s mck_quest3 matches 0.. run scoreboard players add @s mck_quest3 1

execute if score @s mck_challenge_level matches 2 if score @s mck_quest3 matches 0.. store result score @s mck_quest3 run data get entity @s EnderItems[4].tag.track_stats

execute if score @s mck_challenge_level matches 3 if score @s mck_quest3 matches 0.. run scoreboard players add @s mck_quest3 1
execute if score @s mck_challenge_level matches 3 if score @s mck_quest1 matches 0.. if score @s mck_place matches 1 if score @s mck_lobby_type matches 0 run scoreboard players add @s mck_quest1 1

execute if score @s mck_challenge_level matches 4 if score @s mck_quest3 matches 0.. store result score @s mck_quest3 run data get entity @s EnderItems[4].tag.stats.rank

execute if score @s mck_challenge_level matches 5 if score @s mck_quest2 matches 0.. run scoreboard players operation time mck_temp = @s mck_timer
execute if score @s mck_challenge_level matches 5 if score @s mck_quest2 matches 0.. run scoreboard players operation time mck_temp /= #2 mck_time
execute if score @s mck_challenge_level matches 5 if score @s mck_quest2 matches 0.. if score @s mck_quest_temp >= time mck_temp run scoreboard players add @s mck_quest2 1

execute if score @s mck_challenge_level matches 6 if score @s mck_quest1 matches 0.. run scoreboard players add @s mck_quest1 1

execute if score @s mck_challenge_level matches 7 if score @s mck_quest3 matches 0.. store result score @s mck_quest3 run data get entity @s EnderItems[4].tag.stats.rank
execute if score @s mck_challenge_level matches 7 unless score @s mck_quest3 matches ..-1 unless score @s mck_quest3 matches 1..5 run scoreboard players set @s mck_quest3 0

execute if score @s mck_challenge_level matches 8 if score @s mck_quest1 matches 0.. store result score @s mck_quest1 run experience query @s levels
execute if score @s mck_challenge_level matches 8 if score @s mck_quest2 matches 0.. if score @s mck_quest_temp matches 0 run scoreboard players add @s mck_quest2 1

execute if score @s mck_challenge_level matches 9 if score @s mck_quest1 matches 0.. run scoreboard players add @s mck_quest1 1
execute if score @s mck_challenge_level matches 9 if score @s mck_quest2 matches 0.. if score @s mck_quest_temp matches 0 run scoreboard players add @s mck_quest2 1

execute if score @s mck_challenge_level matches 10 if score @s mck_quest1 matches 0.. store result score @s mck_quest1 run data get entity @s EnderItems[4].tag.stats.rank
execute if score @s mck_challenge_level matches 10 unless score @s mck_quest1 matches ..-1 unless score @s mck_quest1 matches 1..3 run scoreboard players set @s mck_quest1 0
execute if score @s mck_challenge_level matches 10 if score @s mck_quest2 matches 0.. if score @s mck_place matches 1 if score @s mck_lobby_type matches 0 run scoreboard players add @s mck_quest_temp 1
execute if score @s mck_challenge_level matches 10 if score @s mck_quest2 matches 0.. if score @s mck_quest_temp matches 2 run scoreboard players add @s mck_quest2 1

function mck:player/challenges/reached