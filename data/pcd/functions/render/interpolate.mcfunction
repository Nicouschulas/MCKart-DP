data remove storage pcd:temp frame
data modify storage pcd:temp frame.x set from storage pcd:temp process_points[0].pos[0]
data modify storage pcd:temp frame.y set from storage pcd:temp process_points[0].pos[1]
data modify storage pcd:temp frame.z set from storage pcd:temp process_points[0].pos[2]

summon marker 0.0 0.0 0.0 {Tags:["pcd.temp"]}
execute positioned 0.0 0.0 0.0 as @e[type=marker,tag=pcd.temp] at @s run function pcd:render/subtract with storage pcd:temp frame

execute store result score #p2_ix pcd.math run data get storage pcd:temp pos[0] 10000
execute store result score #p2_iy pcd.math run data get storage pcd:temp pos[1] 10000
execute store result score #p2_iz pcd.math run data get storage pcd:temp pos[2] 10000

# dist / t_max * t
scoreboard players operation #p2_ix pcd.math /= #t_max pcd.math
scoreboard players operation #p2_iy pcd.math /= #t_max pcd.math
scoreboard players operation #p2_iz pcd.math /= #t_max pcd.math
scoreboard players operation #p2_ix pcd.math *= #t pcd.math
scoreboard players operation #p2_iy pcd.math *= #t pcd.math
scoreboard players operation #p2_iz pcd.math *= #t pcd.math

data remove storage pcd:temp frame
execute store result storage pcd:temp frame.x double 0.0001 run scoreboard players get #p2_ix pcd.math
execute store result storage pcd:temp frame.y double 0.0001 run scoreboard players get #p2_iy pcd.math
execute store result storage pcd:temp frame.z double 0.0001 run scoreboard players get #p2_iz pcd.math

summon marker 0.0 0.0 0.0 {Tags:["pcd.temp"]}
execute positioned 0.0 0.0 0.0 as @e[type=marker,tag=pcd.temp] at @s run function pcd:render/addion with storage pcd:temp frame

data modify storage pcd:temp rot set value []

execute store result score #p1_rx pcd.math run data get storage pcd:temp process_points[0].rot[0] 10000
execute store result score #p1_ry pcd.math run data get storage pcd:temp process_points[0].rot[1] 10000
execute store result score #p2_rx pcd.math run data get storage pcd:temp process_points[1].rot[0] 10000
execute store result score #p2_ry pcd.math run data get storage pcd:temp process_points[1].rot[1] 10000

scoreboard players operation #p2_rx pcd.math -= #p1_rx pcd.math
scoreboard players operation #p2_ry pcd.math -= #p1_ry pcd.math

execute if score #p2_rx pcd.math matches ..-1800001 run scoreboard players add #p2_rx pcd.math 3600000
execute if score #p2_rx pcd.math matches 1800001.. run scoreboard players remove #p2_rx pcd.math 3600000

scoreboard players operation #p2_rx pcd.math *= #t pcd.math
scoreboard players operation #p2_ry pcd.math *= #t pcd.math
scoreboard players operation #p2_rx pcd.math /= #t_max pcd.math
scoreboard players operation #p2_ry pcd.math /= #t_max pcd.math

scoreboard players operation #p2_rx pcd.math += #p1_rx pcd.math
scoreboard players operation #p2_ry pcd.math += #p1_ry pcd.math

execute if score #p2_rx pcd.math matches ..-1800001 run scoreboard players add #p2_rx pcd.math 3600000
execute if score #p2_rx pcd.math matches 1800001.. run scoreboard players remove #p2_rx pcd.math 3600000

execute store result storage pcd:temp rx float 0.0001 run scoreboard players get #p2_rx pcd.math
execute store result storage pcd:temp ry float 0.0001 run scoreboard players get #p2_ry pcd.math
data modify storage pcd:temp rot append from storage pcd:temp rx
data modify storage pcd:temp rot append from storage pcd:temp ry

data remove storage pcd:temp frame
data modify storage pcd:temp frame.pos set from storage pcd:temp pos
data modify storage pcd:temp frame.rot set from storage pcd:temp rot
data modify storage pcd:temp inter_points append from storage pcd:temp frame
data remove storage pcd:temp process_points[0]