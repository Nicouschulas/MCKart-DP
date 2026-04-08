scoreboard players set #temp pcd.temp 2

data remove storage pcd:temp frame
data modify storage pcd:temp frame.x set from storage pcd:temp list[0].pos[0]
data modify storage pcd:temp frame.y set from storage pcd:temp list[0].pos[1]
data modify storage pcd:temp frame.z set from storage pcd:temp list[0].pos[2]
data modify storage pcd:temp frame.rx set from storage pcd:temp list[0].rot[0]
data modify storage pcd:temp frame.ry set from storage pcd:temp list[0].rot[1]

function pcd:particles/tp with storage pcd:temp frame

data remove storage pcd:temp list[0]
data remove storage pcd:temp list[0]
data remove storage pcd:temp list[0]
data remove storage pcd:temp list[0]
data remove storage pcd:temp list[0]
data remove storage pcd:temp list[0]
execute if data storage pcd:temp list[0] run function pcd:particles/show_render