data modify entity @s Pos set from storage lobby recordings[0].show[0].pos
execute at @s run particle minecraft:block_marker structure_block ~ ~.5 ~ 0 0 0 0 1 force @a[limit=1,tag=showme,scores={mck_setting8=1}]
data remove storage lobby recordings[0].show[0]
tp @s 0.0 0.0 0.0 0 0