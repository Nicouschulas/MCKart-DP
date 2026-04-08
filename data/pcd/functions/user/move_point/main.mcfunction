scoreboard players set #length pcd.temp 2000000000
scoreboard players set #index pcd.temp -1
scoreboard players set #i pcd.temp 0

data modify storage pcd:temp list set from storage pcd:workspace data.workspace

execute store result score #px pcd.temp run data get entity @s Pos[0] 10
execute store result score #py pcd.temp run data get entity @s Pos[1] 10
execute store result score #pz pcd.temp run data get entity @s Pos[2] 10

execute if data storage pcd:temp list[0] run function pcd:user/move_point/check

data remove storage pcd:temp temp
execute store result storage pcd:temp temp.index int 1 run scoreboard players get #index pcd.temp
function pcd:user/move_point/change with storage pcd:temp temp