data modify entity @s Pos set from storage bob show.trafficlights[0]
execute if data storage bob show.trafficlights[0] at @s run particle minecraft:block_marker{BlockName:"minecraft:redstone_lamp",Data:1b} ~0.5 ~0.5 ~0.5 0 0 0 0 1 force @a[scores={mck_status=-72}]
data remove storage bob show.trafficlights[0]

execute if data storage bob show.trafficlights[0] run function mck:player/bob/show_points/show_lights