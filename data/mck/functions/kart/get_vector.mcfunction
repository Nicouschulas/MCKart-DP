tp @s 0.0 0.0 0.0 0.0 0.0

execute store result entity @s Rotation[0] float 1 run scoreboard players get actual_dir mck_dir

execute if score ok mck_drift matches 0 run execute at @s run tp @s ^ ^ ^1

execute if score ok mck_drift matches 1 run execute at @s run tp @s ^ ^ ^0.82
execute if score ok mck_drift matches 1 run execute store result entity @s Rotation[0] float 1 run scoreboard players get dir mck_dir
execute if score ok mck_drift matches 1 run execute at @s run tp @s ^ ^ ^0.24

data modify storage temp dir set from entity @s Pos