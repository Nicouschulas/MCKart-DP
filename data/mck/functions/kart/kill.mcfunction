summon item_display ~ ~ ~ {item_display:"ground",Rotation:[0F,90F],Tags:["mck_kart_shrink","temp"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]},item:{id:"minecraft:diamond",Count:1b,components:{minecraft:custom_model_data=101}}}

data modify storage temp rot set from entity @s Rotation
data modify storage temp temp set from entity @s HandItems[0].components.minecraft:custom_model_data

execute at @s rotated as @s as @e[type=item_display,tag=temp,limit=1,sort=nearest] run function mck:kart/shrink_set


scoreboard players set @s mck_scene_anim 4