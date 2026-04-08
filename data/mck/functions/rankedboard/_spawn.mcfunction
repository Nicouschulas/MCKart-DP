summon text_display ~ ~5.5 ~ {view_range:3f,Tags:["ranked_board_title"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},text:'{"translate":"rankedboard.title","font":"font1","color":"white"}',background:0}
execute store result entity @e[type=text_display,tag=ranked_board_title,limit=1,sort=nearest] Rotation[0] float 1 run scoreboard players get rotation mck_temp

summon text_display ~ ~0.4 ~ {view_range:3f,Tags:["ranked_board_list"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},text:'{"text":"Gold\\n\\n1.\\n2.\\n3.\\n4.\\n5.\\n6.\\n7.\\n8.\\n9.\\n10.\\n11.\\n12.\\n13.\\n14.\\n15.\\n\\n\\nYou lol\\n\\n800 Players\\nare in Gold","color":"#D6D6D6"}',background:0}
execute store result entity @e[type=text_display,tag=ranked_board_list,limit=1,sort=nearest] Rotation[0] float 1 run scoreboard players get rotation mck_temp

execute rotated as @e[type=text_display,tag=ranked_board_list,limit=1,sort=nearest,distance=..8] run summon item_display ^-1.8 ^0.6 ^ {view_range:3f,Tags:["ranked_board_left"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.2f,1.2f,0.01f]},item:{id:"minecraft:gold_nugget",Count:1b,tag:{CustomModelData:113}}}
execute store result entity @e[type=item_display,tag=ranked_board_left,limit=1,sort=nearest] Rotation[0] float 1 run scoreboard players get rotation mck_temp
execute as @e[type=item_display,tag=ranked_board_left,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~180 ~

execute rotated as @e[type=text_display,tag=ranked_board_list,limit=1,sort=nearest,distance=..8] run summon item_display ^1.8 ^0.6 ^ {view_range:3f,Tags:["ranked_board_right"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.2f,1.2f,0.01f]},item:{id:"minecraft:gold_nugget",Count:1b,tag:{CustomModelData:114}}}
execute store result entity @e[type=item_display,tag=ranked_board_right,limit=1,sort=nearest] Rotation[0] float 1 run scoreboard players get rotation mck_temp
execute as @e[type=item_display,tag=ranked_board_right,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~180 ~

execute at @e[type=item_display,tag=ranked_board_left,limit=1,sort=nearest] run summon interaction ^-0.15 ^-0.6 ^0.45 {Tags:["ranked_board_left_"]}
execute at @e[type=item_display,tag=ranked_board_right,limit=1,sort=nearest] run summon interaction ^0.15 ^-0.6 ^0.45 {Tags:["ranked_board_right_"]}