scoreboard players set bob_show_points mck_temp 1

data modify storage bob show.items set from storage bob data.items
data modify storage bob show.coins set from storage bob data.coins
data modify storage bob show.checkpoints set from storage bob data.checkpoints
data modify storage bob show.startpos set from storage bob data.startpos
data modify storage bob show.trafficlights set from storage bob data.trafficlights
data modify storage bob show.cameradata set from storage bob data.cameradata
data modify storage bob show.bot_checkpoints set from storage bob data.bot_checkpoints

summon marker 0 0 0 {Tags:["bob_shower"]}
execute as @e[tag=bob_shower,limit=1,type=marker] at @s run function mck:player/bob/show_points/bob_shower