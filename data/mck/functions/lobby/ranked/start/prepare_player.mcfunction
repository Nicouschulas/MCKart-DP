scoreboard players set @s mck_timer 660
scoreboard players set @s mck_lobby_status 1
scoreboard players operation @s mck_track = track_id mck_temp
scoreboard players operation @s mck_race = lobbyraceid mck_temp
scoreboard players operation @s mck_players = playercount mck_temp
scoreboard players set @s mck_lobby_type 1

execute store result score @s mck_startx run data get storage temp startpos[0][0]
execute store result score @s mck_starty run data get storage temp startpos[0][1]
execute store result score @s mck_startz run data get storage temp startpos[0][2]
data remove storage temp startpos[0]

scoreboard players operation @s mck_startangle = startangle mck_temp

gamemode spectator @s
scoreboard players operation @s mck_camx = x mck_temp
scoreboard players operation @s mck_camy = y mck_temp
scoreboard players add @s mck_camy 1
scoreboard players operation @s mck_camz = z mck_temp

item replace block 0 0 0 container.0 with paper 1
data modify block 0 0 0 Items[0].tag.data set from storage lobby ranked[0].track.tag.data
item replace entity @s enderchest.2 from block 0 0 0 container.0

function mck:player/lobby_status_1/prepare_race_data