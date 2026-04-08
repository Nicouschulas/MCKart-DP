# race id
scoreboard players add race_id mck_id 1
execute if score race_id mck_id matches 0 run scoreboard players set race_id mck_id 1
scoreboard players operation lobbyraceid mck_temp = race_id mck_id
execute store result storage temp temp long 1 run scoreboard players get lobbyraceid mck_temp
data modify storage lobby races append from storage temp temp



data modify storage tracks used append from storage tracks selections[0]

execute store result score track_id mck_temp run data get storage lobby ranked[0].track.tag.data.id
execute store result score startangle mck_temp run data get storage lobby ranked[0].track.tag.data.startangle

execute store result score checkpoints mck_temp run data get storage lobby ranked[0].track.tag.data.checkpoints
execute store result score loops mck_temp run data get storage lobby ranked[0].track.tag.data.loops
scoreboard players operation checkpoints mck_temp *= loops mck_temp

execute store result score x mck_temp run data get storage lobby ranked[0].track.tag.data.cameradata[0]
execute store result score y mck_temp run data get storage lobby ranked[0].track.tag.data.cameradata[1]
execute store result score z mck_temp run data get storage lobby ranked[0].track.tag.data.cameradata[2]

data modify storage temp startpos set from storage lobby ranked[0].track.tag.data.startpos
scoreboard players operation playercount mck_temp = lobbyplayers mck_temp


# world record
scoreboard players operation in mck_db_bit = track_id mck_temp
function mck:database/track_find

execute if data storage databases output.data run data modify storage temp best_name set from storage databases output.data.r_best.name
execute if data storage databases output.data run data modify storage temp best_time set from storage databases output.data.r_best.time

execute if data storage databases output.data run data modify storage lobby ranked[0].recording set from storage databases output.data.r_best.recording



# Prepare players
execute as @a[scores={mck_lobby=1..},sort=random] if score @s mck_lobby = lobbyid mck_temp run function mck:lobby/ranked/start/prepare_player

scoreboard players set lobbystatus mck_temp 1
scoreboard players set lobbystarttime mck_temp 33
scoreboard players set lobbydidfinish mck_temp 0


# Prepare Coins
data modify storage temp coins set from storage lobby ranked[0].track.tag.data.coins
data remove storage lobby ranked[0].coin_list
function mck:lobby/ranked/start/prepare_coins


# Prepare Itemboxes
data modify storage temp itemboxes set from storage lobby ranked[0].track.tag.data.items
data remove storage lobby ranked[0].itemboxes_list
function mck:lobby/ranked/start/prepare_itemboxes




execute as @a[scores={mck_page=0}] run function mck:menu/draw