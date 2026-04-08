# daten empfangen
scoreboard players operation speed mck_speed = @s mck_speed
scoreboard players operation grip mck_grip = @s mck_grip
scoreboard players operation drive_mode mck_drive_mode = @s mck_drive_mode

# direction anpassen

scoreboard players operation temp mck_dir = @s mck_dir
scoreboard players operation temp mck_dir -= dir mck_dir
execute if score temp mck_dir matches 181.. run function mck:kart/direction_fix1
execute if score temp mck_dir matches ..-181 run function mck:kart/direction_fix2

scoreboard players set temp2 mck_dir 0
scoreboard players operation temp2 mck_dir -= grip mck_grip

execute if score temp mck_dir > grip mck_grip if score temp mck_dir matches ..180 run scoreboard players operation @s mck_dir -= grip mck_grip
execute if score temp mck_dir < temp2 mck_dir if score temp mck_dir matches -180.. run scoreboard players operation @s mck_dir += grip mck_grip

execute if score temp mck_dir <= grip mck_grip if score temp mck_dir >= temp2 mck_dir run scoreboard players operation @s mck_dir = dir mck_dir

execute if score @s mck_dir matches 180.. run scoreboard players remove @s mck_dir 360
execute if score @s mck_dir matches ..-180 run scoreboard players add @s mck_dir 360


# speed pads
execute if block ~ ~-0.5 ~ magenta_glazed_terracotta if score @s mck_speed matches ..160 run scoreboard players add @s mck_speed 70



# calculate speed
scoreboard players operation @s mck_speed += @s mck_boost

execute if score @s mck_speed matches 301.. run scoreboard players set @s mck_speed 300


# squid
execute if score @s mck_squid matches 1.. run function mck:item_function/squid/victim


# motion


execute if score @s mck_tumble matches 1.. run scoreboard players operation @s mck_dir += #tumble wasd.constant
execute if score @s mck_tumble matches 1.. run scoreboard players set @s mck_speed 0
execute if block ~ ~-3 ~ air if block ~ ~-1 ~ air run function mck:bots/drive/in_air

execute store result entity @s Rotation[0] float 1 run scoreboard players get @s mck_dir
scoreboard players operation actual_dir mck_dir = @s mck_dir
execute positioned 0 0 0 as @e[type=marker,tag=data_handler,limit=1] at @s run function mck:bots/drive/get_vector

execute store result score motion_x mck_dir run data get storage temp dir[0] 10000
execute store result score motion_z mck_dir run data get storage temp dir[2] 10000

scoreboard players set temp mck_speed 0
scoreboard players operation temp mck_speed = @s mck_speed
execute if score drive_mode mck_drive_mode matches 1 if score temp mck_temp matches ..119 run scoreboard players set temp mck_temp 120
scoreboard players operation motion_x mck_dir *= temp mck_speed
scoreboard players operation motion_z mck_dir *= temp mck_speed

execute if score @s mck_setting1 matches 1 run execute store result entity @s Motion[0] double 0.00000058 run scoreboard players get motion_x mck_dir
execute if score @s mck_setting1 matches 1 run execute store result entity @s Motion[2] double 0.00000058 run scoreboard players get motion_z mck_dir
execute if score @s mck_setting1 matches 2 run execute store result entity @s Motion[0] double 0.00000061 run scoreboard players get motion_x mck_dir
execute if score @s mck_setting1 matches 2 run execute store result entity @s Motion[2] double 0.00000061 run scoreboard players get motion_z mck_dir
execute if score @s mck_setting1 matches 3 run execute store result entity @s Motion[0] double 0.00000063 run scoreboard players get motion_x mck_dir
execute if score @s mck_setting1 matches 3 run execute store result entity @s Motion[2] double 0.00000063 run scoreboard players get motion_z mck_dir


# im wasser
execute if block ~ ~-0.3 ~ water run data modify entity @s Motion[1] set value 0.1
execute if block ^ ^0.5 ^0.5 water run data modify entity @s Motion[1] set value 0.5


# Flugmodus
execute if score drive_mode mck_drive_mode matches 1 store result score temp mck_temp run data get entity @s Motion[1] 1000
execute if score drive_mode mck_drive_mode matches 1 if score temp mck_temp matches ..-1 run data modify entity @s Motion[1] set value -0.14

# Unterwassermodus
execute if score drive_mode mck_drive_mode matches 2 run data modify entity @s Motion[1] set value -0.9




# Fans
execute if entity @s[x=-281,dx=7,y=137,dy=21,z=-1051,dz=7] run data modify entity @s Motion[1] set value 3.018
execute if entity @s[x=-103,dx=8,y=83,dy=0.5,z=-861,dz=10] run data modify entity @s Motion[1] set value 1.4
execute if entity @s[x=-103,dx=5,y=93,dy=-4,z=-951,dz=5] run data modify entity @s Motion[1] set value -1.1
execute if entity @s[x=-253,dx=7,y=146,dy=21,z=-763,dz=7] run data modify entity @s Motion[1] set value 2.87


# Cala Pina
execute if score track mck_track matches 5 positioned 662.5 66.5 -19.5 as @s[distance=..4] run data merge entity @s {Motion:[0.25,0.6,-0.7]}
execute if score track mck_track matches 5 positioned 691.5 69.5 111.5 as @s[distance=..5] run data merge entity @s {Motion:[-0.4,1.10,-0.65]}

# rusty relics
execute positioned -982.39 86.00 -1035.52 as @s[distance=..4] run data merge entity @s {Motion:[-1.0,0.0,.5]}
execute positioned -985.33 86.00 -1033.71 as @s[distance=..4] run data merge entity @s {Motion:[-1.0,0.0,.5]}
execute positioned -984.23 86.00 -1034.58 as @s[distance=..4] run data merge entity @s {Motion:[-1.0,0.0,.5]}
execute if entity @s[x=-1066,dx=7,y=91,dy=6,z=-1074,dz=7] run data modify entity @s Motion[1] set value 2.08