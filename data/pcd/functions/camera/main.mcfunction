data modify storage pcd:temp temp set from entity @s item.components
scoreboard players add @s pcd.render 1

execute if score @s pcd.render matches 2..10 run data modify entity @s teleport_duration set value 10
execute unless data storage pcd:temp temp.render[2] if data storage pcd:temp temp.load[0] run data modify entity @s teleport_duration set value 0

scoreboard players operation #frame pcd.temp = @s pcd.render
scoreboard players operation #temp pcd.temp = #frame pcd.temp
scoreboard players operation #temp pcd.temp %= #length_divide pcd.settings
execute if score #temp pcd.temp matches 0 run data remove storage pcd:temp frame
execute if score #temp pcd.temp matches 0 run data modify storage pcd:temp frame.x set from storage pcd:temp temp.render[0].pos[0]
execute if score #temp pcd.temp matches 0 run data modify storage pcd:temp frame.y set from storage pcd:temp temp.render[0].pos[1]
execute if score #temp pcd.temp matches 0 run data modify storage pcd:temp frame.z set from storage pcd:temp temp.render[0].pos[2]
execute if score #temp pcd.temp matches 0 run data modify storage pcd:temp frame.rx set from storage pcd:temp temp.render[0].rot[0]
execute if score #temp pcd.temp matches 0 run data modify storage pcd:temp frame.ry set from storage pcd:temp temp.render[0].rot[1]
execute if score #temp pcd.temp matches 0 if data storage pcd:temp temp.render[0] run function pcd:camera/set_frame with storage pcd:temp frame
execute if score #temp pcd.temp matches 0 if data storage pcd:temp temp.render[0] run data remove storage pcd:temp temp.render[0]


execute store result score #title pcd.temp run data get storage pcd:temp temp.fadeouttitle.frame

scoreboard players set #bool pcd.temp 1
scoreboard players operation #id pcd.temp = @s pcd.id
execute as @a if score @s pcd.id = #id pcd.temp run function pcd:camera/connect_player
spectate @s @p[tag=pcd.me]
tag @p[tag=pcd.me] remove pcd.me

execute store result score #length pcd.temp run data get storage pcd:temp temp.settings.length
execute if score #length pcd.temp < #frame pcd.temp run data modify storage pcd:temp temp.render set value []

execute unless data storage pcd:temp temp.render[0] if data storage pcd:temp temp.load[0] run data modify storage pcd:temp name.name set from storage pcd:temp temp.load[0]
execute unless data storage pcd:temp temp.render[0] if data storage pcd:temp temp.load[0] run function pcd:camera/new_data with storage pcd:temp name


data modify entity @s item.components set from storage pcd:temp temp
execute unless data storage pcd:temp temp.render[0] unless data storage pcd:temp temp.load[0] run function pcd:camera/end
execute if score #bool pcd.temp matches 1 run kill @s