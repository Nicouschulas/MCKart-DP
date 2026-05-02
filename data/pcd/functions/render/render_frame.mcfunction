execute unless data storage pcd:temp process_points[1] unless data storage pcd:temp inter_points[1] run data modify storage pcd:temp process_points set from storage pcd:temp render_points
scoreboard players set #bool pcd.temp 0
execute unless data storage pcd:temp process_points[1] if data storage pcd:temp inter_points[1] run scoreboard players set #bool pcd.temp 1
execute if score #bool pcd.temp matches 1 run data modify storage pcd:temp process_points set from storage pcd:temp inter_points
execute if score #bool pcd.temp matches 1 run data remove storage pcd:temp inter_points

execute if data storage pcd:temp process_points[1] run function pcd:render/interpolate

execute unless data storage pcd:temp process_points[1] if data storage pcd:temp inter_points[0] unless data storage pcd:temp inter_points[1] run function pcd:render/finalize_frame