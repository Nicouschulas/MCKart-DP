# direction anpassen

scoreboard players operation temp mck_dir = @s[mck_dir]
scoreboard players operation temp mck_dir -= dir mck_dir
execute if score temp mck_dir matches 181.. run function mck:kart/direction_fix1
execute if score temp mck_dir matches ..-181 run function mck:kart/direction_fix2
execute if score @s[mck_dir] matches 180.. if score dir mck_dir matches -180 run scoreboard players set temp mck_dir 0
execute if score @s[mck_dir] matches ..-180 if score dir mck_dir matches 180 run scoreboard players set temp mck_dir 0

scoreboard players set temp2 mck_dir 0
scoreboard players operation temp2 mck_dir -= grip mck_grip

scoreboard players set right mck_drift 0
execute if score temp mck_dir matches 10..180 run scoreboard players set right mck_drift -1
execute if score temp mck_dir matches -180..-10 run scoreboard players set right mck_drift 1

execute if score temp mck_dir > grip mck_grip if score temp mck_dir matches ..180 run scoreboard players operation @s[mck_dir] -= grip mck_grip
execute if score temp mck_dir < temp2 mck_dir if score temp mck_dir matches -180.. run scoreboard players operation @s[mck_dir] += grip mck_grip

execute if score temp mck_dir <= grip mck_grip if score temp mck_dir >= temp2 mck_dir run scoreboard players operation @s[mck_dir] = dir mck_dir

execute if score @s[mck_dir] matches 180.. run scoreboard players remove @s[mck_dir] 360
execute if score @s[mck_dir] matches ..-180 run scoreboard players add @s[mck_dir] 360

# check drift direction

execute if block ~ ~-3 ~ air if block ~ ~-1 ~ air run function mck:kart/in_air

scoreboard players set ok mck_drift 0
execute if score drift mck_drift matches ..-1 if score right mck_drift matches -1 run scoreboard players set ok mck_drift 1
execute if score drift mck_drift matches 1.. if score right mck_drift matches 1 run scoreboard players set ok mck_drift 1
scoreboard players set bool mck_temp 0
execute if score @s[mck_drift] matches 14.. run scoreboard players set bool mck_temp 1
execute if score @s[mck_drift] matches ..-14 run scoreboard players set bool mck_temp 1
execute if score @s[mck_drift] matches 26.. run scoreboard players set bool mck_temp 2
execute if score @s[mck_drift] matches ..-26 run scoreboard players set bool mck_temp 2

execute if score ok mck_drift matches 1 if score bool mck_temp matches 0.. rotated ~ 0 run particle minecraft:dust{color:[R,G,B],scale:1.0} ^-0.8 ^ ^0.1 0.08 0 0.08 0 7
execute if score ok mck_drift matches 1 if score bool mck_temp matches 0.. rotated ~ 0 run particle minecraft:dust{color:[R,G,B],scale:1.0} ^0.8 ^ ^0.1 0.08 0 0.08 0 7
execute if score ok mck_drift matches 1 if score bool mck_temp matches 0.. rotated ~ 0 run particle minecraft:dust{color:[R,G,B],scale:1.0} ^-0.8 ^ ^-1.2 0.08 0 0.08 0 7
execute if score ok mck_drift matches 1 if score bool mck_temp matches 0.. rotated ~ 0 run particle minecraft:dust{color:[R,G,B],scale:1.0} ^0.8 ^ ^-1.2 0.08 0 0.08 0 7

execute if score brake.sound mck_timer matches 0 if score ok mck_drift matches 1 if score bool mck_temp matches 0.. on passengers if entity @s[type=player] run function mck:player/audio_engine/brake

execute if score brake mck_brake matches 1.. if score @s[mck_speed] matches 1.. as @p at @s anchored feet rotated ~ 0 run particle minecraft:dust{color:[R,G,B],scale:1.0} ^0.6 ^ ^1.1 0.08 0 0.08 0 7
execute if score brake mck_brake matches 1.. if score @s[mck_speed] matches 1.. as @p at @s anchored feet rotated ~ 0 run particle minecraft:dust{color:[R,G,B],scale:1.0} ^-0.6 ^ ^1.1 0.08 0 0.08 0 7
execute if score brake mck_brake matches 1.. if score @s[mck_speed] matches 1.. as @p at @s anchored feet rotated ~ 0 run particle minecraft:dust{color:[R,G,B],scale:1.0} ^0.6 ^ ^-1 0.08 0 0.08 0 7
execute if score brake mck_brake matches 1.. if score @s[mck_speed] matches 1.. as @p at @s anchored feet rotated ~ 0 run particle minecraft:dust{color:[R,G,B],scale:1.0} ^-0.6 ^ ^-1 0.08 0 0.08 0 7
execute if score brake mck_brake matches 1.. if score @s[mck_speed] matches 1.. on passengers if entity @s[type=player] run function mck:player/audio_engine/brake

execute if score ok mck_drift matches 1 if score bool mck_temp matches 1 rotated ~ 0 run particle minecraft:wax_off ^-0.8 ^0.1 ^0.1 0.1 0 0.1 0 1
execute if score ok mck_drift matches 1 if score bool mck_temp matches 1 rotated ~ 0 run particle minecraft:wax_off ^0.8 ^0.1 ^0.1 0.1 0 0.1 0 1
execute if score ok mck_drift matches 1 if score bool mck_temp matches 1 rotated ~ 0 run particle minecraft:wax_off ^-0.8 ^0.1 ^-1.2 0.1 0 0.1 0 1
execute if score ok mck_drift matches 1 if score bool mck_temp matches 1 rotated ~ 0 run particle minecraft:wax_off ^0.8 ^0.1 ^-1.2 0.1 0 0.1 0 1

execute if score ok mck_drift matches 1 if score bool mck_temp matches 2 rotated ~ 0 run particle minecraft:wax_on ^-0.8 ^0.1 ^0.1 0.1 0 0.1 0 1
execute if score ok mck_drift matches 1 if score bool mck_temp matches 2 rotated ~ 0 run particle minecraft:wax_on ^0.8 ^0.1 ^0.1 0.1 0 0.1 0 1
execute if score ok mck_drift matches 1 if score bool mck_temp matches 2 rotated ~ 0 run particle minecraft:wax_on ^-0.8 ^0.1 ^-1.2 0.1 0 0.1 0 1
execute if score ok mck_drift matches 1 if score bool mck_temp matches 2 rotated ~ 0 run particle minecraft:wax_on ^0.8 ^0.1 ^-1.2 0.1 0 0.1 0 1

execute if score drift mck_drift matches 0 if score bool mck_temp matches 1.. run scoreboard players operation @s[mck_dir] = dir mck_dir
execute if score ok mck_drift matches 0 if score bool mck_temp matches 1..2 run particle minecraft:soul_fire_flame ~ ~1.7 ~ 0.9 0.9 0.9 0.1 10
execute if score ok mck_drift matches 0 if score bool mck_temp matches 1 run scoreboard players add @s[mck_speed] 36
execute if score ok mck_drift matches 0 if score bool mck_temp matches 2 run scoreboard players add @s[mck_speed] 90
execute if score lobby_status mck_temp matches 2 if score ok mck_drift matches 0 if score bool mck_temp matches 2 if score challenge_level mck_challenge_level matches 6 on passengers if entity @s[type=player,scores={mck_status=1}] if score @s[mck_quest2] matches 0.. run scoreboard players add @s[mck_quest2] 1
execute if score ok mck_drift matches 0 run scoreboard players set @s[mck_drift] 0
execute if score ok mck_drift matches 1 if score drift mck_drift matches ..-1 run scoreboard players remove @s[mck_drift] 1
execute if score ok mck_drift matches 1 if score drift mck_drift matches 1.. run scoreboard players add @s[mck_drift] 1



# speed pads
execute if block ~ ~-0.5 ~ magenta_glazed_terracotta if score @s[mck_speed] matches ..180 run scoreboard players add @s[mck_speed] 70



# calculate speed

execute if score @s[mck_speed] > speed mck_speed if score brake mck_brake matches 0 run scoreboard players remove @s[mck_speed] 4
execute if score @s[mck_speed] > speed mck_speed if score brake mck_brake matches 1.. run scoreboard players remove @s[mck_speed] 6
execute if score @s[mck_speed] < speed mck_speed run scoreboard players add @s[mck_speed] 3

execute if score brake mck_brake matches 0 if score @s[mck_speed] matches ..-1 run scoreboard players add @s[mck_speed] 4
scoreboard players operation @s[mck_speed] += boost mck_boost

execute if score @s[mck_speed] matches 301.. run scoreboard players set @s[mck_speed] 300


execute if score tumble mck_tumble matches 1.. run scoreboard players operation @s[mck_dir] += #tumble wasd.constant
execute if score tumble mck_tumble matches 1.. run scoreboard players set @s[mck_speed] 0

execute if block ~ ~-3 ~ air if block ~ ~-1 ~ air run function mck:kart/in_air

# motion

execute if score ok mck_drift matches 0 run execute store result entity @s Rotation[0] float 1 run scoreboard players get @s[mck_dir]
execute if score ok mck_drift matches 1 run execute store result entity @s Rotation[0] float 1 run scoreboard players get dir mck_dir
scoreboard players operation actual_dir mck_dir = @s[mck_dir]
execute positioned 0 0 0 as @e[type=marker,tag=data_handler,limit=1] at @s run function mck:kart/get_vector

execute store result score motion_x mck_dir run data get storage temp dir[0] 10000
execute store result score motion_z mck_dir run data get storage temp dir[2] 10000

scoreboard players set temp mck_speed 0
scoreboard players operation temp mck_speed = @s[mck_speed]
execute if score drive_mode mck_drive_mode matches 1 if score temp mck_temp matches ..119 run scoreboard players set temp mck_temp 120
scoreboard players operation motion_x mck_dir *= temp mck_speed
scoreboard players operation motion_z mck_dir *= temp mck_speed

execute store result storage temp Motion[0] double 0.00000058 run scoreboard players get motion_x mck_dir
data modify storage temp Motion[1] set from entity @s Motion[1]
execute store result storage temp Motion[2] double 0.00000058 run scoreboard players get motion_z mck_dir
execute unless score lobby_status mck_temp matches 1 run data modify entity @s Motion set from storage temp Motion


# im wasser
execute if block ~ ~-0.3 ~ water run data modify entity @s Motion[1] set value 0.1
execute if block ^ ^0.5 ^0.5 water run data modify entity @s Motion[1] set value 0.5


# Flugmodus
execute if score drive_mode mck_drive_mode matches 1 store result score temp mck_temp run data get entity @s Motion[1] 1000
execute if score drive_mode mck_drive_mode matches 1 if score temp mck_temp matches ..-1 run data modify entity @s Motion[1] set value -0.14

# Unterwassermodus
execute if score drive_mode mck_drive_mode matches 2 run data modify entity @s Motion[1] set value -0.9




# Fans
execute if score track mck_track matches 4 if entity @s[x=-281,dx=7,y=137,dy=21,z=-1051,dz=7] run data modify entity @s Motion[1] set value 3.018
execute if score track mck_track matches 4 if entity @s[x=-104,dx=8,y=83,dy=1.1,z=-861,dz=10] run data modify entity @s Motion[1] set value 1.4
execute if score track mck_track matches 4 if entity @s[x=-104,dx=5,y=93,dy=-4,z=-951,dz=5] run data modify entity @s Motion[1] set value -1.1
execute if score track mck_track matches 4 if entity @s[x=-253,dx=7,y=146,dy=21,z=-763,dz=7] run data modify entity @s Motion[1] set value 2.87


execute if score @s[mck_speed] matches 1.. run function mck:kart/trail


# reset in void air
execute if score track mck_track matches 1.. if block ~ ~ ~ void_air on passengers if entity @s[type=player,scores={mck_status=1}] run ride @s dismount

# Cala Pina
execute if score track mck_track matches 5 positioned 662.5 66.5 -19.5 as @s[distance=..4] run data merge entity @s {Motion:[0.25,0.6,-0.7]}
execute if score track mck_track matches 5 positioned 779.5 67.5 97.5 as @s[distance=..2.5] run data merge entity @s {Motion:[0.0,1.36,1.75]}
execute if score track mck_track matches 5 positioned 691.5 69.5 111.5 as @s[distance=..5] run data merge entity @s {Motion:[-0.4,1.10,-0.65]}


# rusty relics
execute if score track mck_track matches 6 positioned -982.39 86.00 -1035.52 as @s[distance=..4] run data merge entity @s {Motion:[-1.0,0.0,.5]}
execute if score track mck_track matches 6 positioned -985.33 86.00 -1033.71 as @s[distance=..4] run data merge entity @s {Motion:[-1.0,0.0,.5]}
execute if score track mck_track matches 6 positioned -984.23 86.00 -1034.58 as @s[distance=..4] run data merge entity @s {Motion:[-1.0,0.0,.5]}
execute if score track mck_track matches 6 if entity @s[x=-1066,dx=7,y=91,dy=6,z=-1074,dz=7] run data modify entity @s Motion[1] set value 2.08