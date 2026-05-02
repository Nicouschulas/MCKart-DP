data modify entity @s Pos set from storage bob show.items[0]
execute if data storage bob show.items[0] at @s run particle minecraft:block_marker{block:"minecraft:diamond_block"} ~0.5 ~0.5 ~0.5 0 0 0 0 1 force @a[scores={mck_status=-72}]
data remove storage bob show.items[0]

execute if data storage bob show.items[0] run function mck:player/bob/show_points/show_items