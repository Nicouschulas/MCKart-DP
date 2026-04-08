data modify entity @s Pos set from storage pcd:temp process_points[1].pos
$execute at @s rotated 90 0 run tp @s ^ ^ ^$(x)
$execute at @s rotated 0 90 run tp @s ^ ^ ^$(y)
$execute at @s rotated 180 0 run tp @s ^ ^ ^$(z)
data modify storage pcd:temp pos set from entity @s Pos

kill @s