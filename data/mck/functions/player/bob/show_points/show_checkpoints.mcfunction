data modify entity @s Pos set from storage bob show.checkpoints[0][0]
execute if data storage bob show.checkpoints[0] at @s run particle minecraft:block_marker red_concrete ~0.5 ~0.5 ~0.5 0 0 0 0 1 force @a[scores={mck_status=-72}]

execute if score #place_checkpoints mck_temp matches 1 if data storage bob show.checkpoints[0] at @s run setblock ~ ~ ~ red_wool

data modify entity @s Pos set from storage bob show.checkpoints[0][1]
execute if data storage bob show.checkpoints[0] at @s run particle minecraft:block_marker blue_concrete ~0.5 ~0.5 ~0.5 0 0 0 0 1 force @a[scores={mck_status=-72}]

execute if score #place_checkpoints mck_temp matches 1 if data storage bob show.checkpoints[0] at @s run setblock ~ ~ ~ blue_wool

data modify entity @s Pos set from storage bob show.checkpoints[0][2]
execute if data storage bob show.checkpoints[0] at @s run particle minecraft:block_marker respawn_anchor ~0.5 ~0.5 ~0.5 0 0 0 0 1 force @a[scores={mck_status=-72}]

execute if score #place_checkpoints mck_temp matches 1 if data storage bob show.checkpoints[0] at @s run setblock ~ ~ ~ green_wool

data remove storage bob show.checkpoints[0]


execute if data storage bob show.checkpoints[0] run function mck:player/bob/show_points/show_checkpoints