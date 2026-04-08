function pcd:render/render_frame
scoreboard players add #counter pcd.temp 1
execute if score #counter pcd.temp < #i_per_tick pcd.settings run function pcd:render/loop