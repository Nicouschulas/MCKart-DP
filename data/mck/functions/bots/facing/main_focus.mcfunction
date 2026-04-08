data modify entity @s Pos set from storage temp pos
execute at @s facing entity @e[tag=now,type=fox,limit=1] eyes facing ^ ^ ^-1 run tp @s ~ ~ ~ ~ ~
data modify storage temp rotation set from entity @s Rotation
data modify entity @s Pos set value [0.5, 0.5, 0.5]