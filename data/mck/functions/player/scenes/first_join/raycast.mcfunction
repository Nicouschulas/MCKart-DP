execute positioned ~ ~ ~ as @e[type=interaction,tag=mck_intro_setting,limit=1,distance=..0.45] run function mck:player/scenes/first_join/test_input

scoreboard players add step mck_temp 1
execute if score step mck_temp matches ..35 positioned ~ ~ ~ unless entity @e[type=interaction,tag=mck_intro_setting,limit=1,distance=..0.45] positioned ^ ^ ^0.1 run function mck:player/scenes/first_join/raycast