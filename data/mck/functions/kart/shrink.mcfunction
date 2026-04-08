scoreboard players add @s mck_scene_anim 1

execute if score @s mck_scene_anim matches 1 run data modify entity @s transformation.scale set value [1f,1f,1f]
execute if score @s mck_scene_anim matches 2 run data merge entity @s {start_interpolation:0,interpolation_duration:12,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}

execute if score @s mck_scene_anim matches 14.. run kill @s