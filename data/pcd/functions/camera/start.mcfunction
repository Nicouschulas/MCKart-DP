scoreboard players operation @s pcd.id = #temp pcd.temp

execute if data storage pcd:database {load:["pcd.workspace"]} run data modify entity @s item.tag.render set from storage pcd:workspace data.render
execute if data storage pcd:database {load:["pcd.workspace"]} run data modify entity @s item.tag.settings set from storage pcd:workspace data.settings
execute if data storage pcd:database {load:["pcd.workspace"]} run data modify entity @s item.tag.fadeouttitle set from storage pcd:workspace data.fadeouttitle

execute unless data storage pcd:database {load:["pcd.workspace"]} run data modify storage pcd:temp name.name set from storage pcd:database load[0]
execute unless data storage pcd:database {load:["pcd.workspace"]} run function pcd:camera/load with storage pcd:temp name

data modify entity @s item.tag.load set from storage pcd:database load
data remove entity @s item.tag.load[0]
scoreboard players set @s pcd.render -1


data remove storage pcd:temp frame
data modify storage pcd:temp frame.x set from entity @s item.tag.render[0].pos[0]
data modify storage pcd:temp frame.y set from entity @s item.tag.render[0].pos[1]
data modify storage pcd:temp frame.z set from entity @s item.tag.render[0].pos[2]
data modify storage pcd:temp frame.rx set from entity @s item.tag.render[0].rot[0]
data modify storage pcd:temp frame.ry set from entity @s item.tag.render[0].rot[1]
scoreboard players operation #id pcd.temp = @s pcd.id
execute if data entity @s item.tag.render[0] run function pcd:camera/set_frame with storage pcd:temp frame
execute as @a if score @s pcd.id = #id pcd.temp run function pcd:camera/player_to_new_pos with storage pcd:temp frame

tag @s remove pcd.temp