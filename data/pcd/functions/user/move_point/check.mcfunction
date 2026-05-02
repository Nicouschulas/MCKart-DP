execute store result score #x pcd.temp run data get storage pcd:temp list[0].pos[0] 10
execute store result score #y pcd.temp run data get storage pcd:temp list[0].pos[1] 10
execute store result score #z pcd.temp run data get storage pcd:temp list[0].pos[2] 10
scoreboard players operation #x pcd.temp -= #px pcd.temp
scoreboard players operation #y pcd.temp -= #py pcd.temp
scoreboard players operation #z pcd.temp -= #pz pcd.temp
execute if score #x pcd.temp matches ..-1 run scoreboard players operation #x pcd.temp *= #-1 pcd.math
execute if score #y pcd.temp matches ..-1 run scoreboard players operation #y pcd.temp *= #-1 pcd.math
execute if score #z pcd.temp matches ..-1 run scoreboard players operation #z pcd.temp *= #-1 pcd.math
scoreboard players set #dis pcd.temp 0
scoreboard players operation #dis pcd.temp += #x pcd.temp
scoreboard players operation #dis pcd.temp += #y pcd.temp
scoreboard players operation #dis pcd.temp += #z pcd.temp
execute if score #dis pcd.temp < #length pcd.temp run scoreboard players operation #index pcd.temp = #i pcd.temp
execute if score #dis pcd.temp < #length pcd.temp run scoreboard players operation #length pcd.temp = #dis pcd.temp

data remove storage pcd:temp list[0]
scoreboard players add #i pcd.temp 1
execute if data storage pcd:temp list[0] run function pcd:user/move_point/check