data modify entity @s item.components.minecraft:custom_model_data set from storage temp temp
data modify entity @s Rotation[0] set from storage temp rot[0]
execute at @s run tp @s ~ ~ ~ ~-180 ~
execute at @s run tp ^ ^-0.7 ^-0.2

tag @s remove temp