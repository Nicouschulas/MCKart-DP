data modify entity @s Pos set from storage pcd:temp process_points[0].pos
#! {sentity @s Pos}
#! + {sstorage pcd:temp frame.x}x {storage pcd:temp frame.y}y {storage pcd:temp frame.z}z
$execute at @s run tp @s ~$(x) ~$(y) ~$(z)
#! = {sentity @s Pos}

data modify storage pcd:temp pos set from entity @s Pos
execute at @s run particle end_rod ~ ~ ~ 0 0 0 0 1

kill @s