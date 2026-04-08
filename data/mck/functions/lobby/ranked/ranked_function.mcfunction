execute store result score lobbyid mck_temp run data get storage lobby ranked[0].id
execute store result score lobbyjoinlocked mck_temp run data get storage lobby ranked[0].joinlocked
execute store result score lobbylocked mck_temp run data get storage lobby ranked[0].locked
execute store result score lobbyautokick mck_temp run data get storage lobby ranked[0].autokick
execute store result score lobbyplayers mck_temp run data get storage lobby ranked[0].players
execute store result score lobbystatus mck_temp run data get storage lobby ranked[0].status
execute store result score lobbystarttime mck_temp run data get storage lobby ranked[0].starttime
execute store result score lobbygametime mck_temp run data get storage lobby ranked[0].gametime
execute store result score lobbysafetime mck_temp run data get storage lobby ranked[0].safetime
execute store result score lobbyraceid mck_temp run data get storage lobby ranked[0].raceid
execute store result score lobbydidfinish mck_temp run data get storage lobby ranked[0].didfinish
execute store result score lobbybots mck_temp run data get storage lobby ranked[0].bots


# Wenn Rennen zu ende, clear raceid
execute if score lobbystatus mck_temp matches 0 unless score lobbyraceid mck_temp matches 0 run function mck:lobby/ranked/del_used_from_list
execute if score lobbystatus mck_temp matches 0 unless score lobbyraceid mck_temp matches 0 run function mck:lobby/ranked/raceid_clear


# Wenn keine Spieler da, resette Lobby
execute if score lobbyplayers mck_temp matches 0 run function mck:lobby/zero_players

execute if score lobbystatus mck_temp matches 0 run function mck:lobby/ranked/ranked_status0
execute if score lobbystatus mck_temp matches 1 run function mck:lobby/ranked/ranked_status1
execute if score lobbystatus mck_temp matches 2 run function mck:lobby/ranked/ranked_status2


execute if score lobbystatus mck_temp matches 0 as @a[scores={mck_lobby=1..}] if score @s mck_lobby = lobbyid mck_temp run function mck:lobby/ranked/ranked_player0
execute if score lobbystatus mck_temp matches 1 as @a[scores={mck_lobby=1..}] if score @s mck_lobby = lobbyid mck_temp run function mck:lobby/ranked/ranked_player1
execute if score lobbystatus mck_temp matches 2 as @a[scores={mck_lobby=1..}] if score @s mck_lobby = lobbyid mck_temp run function mck:lobby/ranked/ranked_player2


function mck:bossbar/r_set_players
tag @a[tag=inlobby] remove inlobby

execute store result score player_loop mck_temp run data get storage lobby ranked[0].players
function mck:lobby/ranked/ranked_check

execute store result storage lobby ranked[0].status byte 1 run scoreboard players get lobbystatus mck_temp
execute store result storage lobby ranked[0].joinlocked byte 1 run scoreboard players get lobbyjoinlocked mck_temp
execute store result storage lobby ranked[0].locked byte 1 run scoreboard players get lobbylocked mck_temp
execute store result storage lobby ranked[0].autokick byte 1 run scoreboard players get lobbyautokick mck_temp
execute store result storage lobby ranked[0].starttime long 1 run scoreboard players get lobbystarttime mck_temp
execute store result storage lobby ranked[0].gametime long 1 run scoreboard players get lobbygametime mck_temp
execute store result storage lobby ranked[0].safetime long 1 run scoreboard players get lobbysafetime mck_temp
execute store result storage lobby ranked[0].raceid long 1 run scoreboard players get lobbyraceid mck_temp
execute store result storage lobby ranked[0].didfinish long 1 run scoreboard players get lobbydidfinish mck_temp
execute store result storage lobby ranked[0].bots long 1 run scoreboard players get lobbybots mck_temp