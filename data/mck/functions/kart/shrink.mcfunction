scoreboard players add @s mck_scene_anim 1

execute if score @s mck_scene_anim matches 1 run data modify entity @s transformation.scale set value [1.0,1.0,1.0]
execute if score @s mck_scene_anim matches 2 run data merge entity @s {start_interpolation:0,interpolation_duration:12,transformation:{left_rotation:[0.0,0.0,0.0,1.0],right_rotation:[0.0,0.0,0.0,1.0],translation:[0.0,0.0,0.0],scale:[0.0,0.0,0.0]}}

execute if score @s mck_scene_anim matches 14.. run kill @s