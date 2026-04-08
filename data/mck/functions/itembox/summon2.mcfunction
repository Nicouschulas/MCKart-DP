execute store result score x mck_temp run data get storage temp itembox.pos[0] 10
execute store result score z mck_temp run data get storage temp itembox.pos[2] 10
scoreboard players add x mck_temp 5
scoreboard players add z mck_temp 5
execute store result storage temp itembox.pos[0] double 0.1 run scoreboard players get x mck_temp
execute store result storage temp itembox.pos[2] double 0.1 run scoreboard players get z mck_temp

data modify entity @s Pos set from storage temp itembox.pos

execute at @s run summon end_crystal ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowBottom:0b,Tags:["itembox","temp"]}
scoreboard players operation @e[tag=temp,type=end_crystal] mck_id = lobbyraceid mck_temp
scoreboard players operation @e[tag=temp,type=end_crystal] mck_lobby = lobbyid mck_temp

tag @e[tag=temp,type=end_crystal] remove temp

kill @s