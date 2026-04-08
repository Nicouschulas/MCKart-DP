data modify entity @s Pos set from storage bob show.bot_checkpoints[0].pos
execute if data storage bob show.bot_checkpoints[0] at @s run particle end_rod ~ ~0.1 ~ 0 0 0 0 1 force @a[scores={mck_status=-72}]
data remove storage bob show.bot_checkpoints[0]


execute if data storage bob show.bot_checkpoints[0] run function mck:player/bob/show_points/show_bot_checkpoints