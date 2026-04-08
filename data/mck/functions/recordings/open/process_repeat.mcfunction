data modify entity @s Pos set from storage temp list1[0].recording[0].pos
execute at @s run particle minecraft:block_marker purpur_pillar ~ ~.5 ~ 0 0 0 0 1 force @a[scores={mck_setting8=1}]

data remove storage temp list1[0].recording[0]
execute if data storage temp list1[0].recording[0] run data modify storage temp list2 append from storage temp list1[0]
data remove storage temp list1[0]


execute if data storage temp list1[0] at @s run function mck:recordings/open/process_repeat