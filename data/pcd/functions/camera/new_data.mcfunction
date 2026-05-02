$data modify storage pcd:temp temp.render set from storage pcd:database data[{name:$(name)}].render
$data modify storage pcd:temp temp.settings set from storage pcd:database data[{name:$(name)}].settings
$data modify storage pcd:temp temp.fadeouttitle set from storage pcd:database data[{name:$(name)}].fadeouttitle
data remove storage pcd:temp temp.load[0]

scoreboard players set @s pcd.render -1

data remove storage pcd:temp frame
data modify storage pcd:temp frame.x set value storage.pcd.temp.temp.render[0].pos[0]
data modify storage pcd:temp frame.y set value storage.pcd.temp.temp.render[0].pos[1]
data modify storage pcd:temp frame.z set value storage.pcd.temp.temp.render[0].pos[2]
data modify storage pcd:temp frame.rx set value storage.pcd.temp.temp.render[0].rot[0]
data modify storage pcd:temp frame.ry set value storage.pcd.temp.temp.render[0].rot[1]
data modify entity @s teleport_duration set value 0
scoreboard players operation #id pcd.temp = @s pcd.id
function pcd:camera/set_frame with storage pcd:temp frame
execute as @a if score @s pcd.id matches #id pcd.temp run function pcd:camera/player_to_new_pos with storage pcd:temp frame