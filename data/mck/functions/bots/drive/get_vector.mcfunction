tp @s 0.0 0.0 0.0 0.0 0.0

execute store result entity @s Rotation[0] float 1 run scoreboard players get actual_dir mck_dir

execute at @s run tp @s ^ ^ ^1

data modify storage temp dir set from entity @s Pos