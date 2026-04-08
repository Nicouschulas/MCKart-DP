execute if score @s mck_scene_anim matches 240 run function mck:menu/draw
execute if score @s mck_scene_anim matches 240 run scoreboard players set @s mck_tracks_page 1
execute if score @s mck_scene_anim matches 240 run function mck:menu/draw

execute if score @s mck_scene_anim matches 240 run effect give @s invisibility infinite 0 true

execute if score @s mck_scene_anim matches 1..240 run title @s actionbar {"translate":"subtitles.manager46","color":"#DEDEDE","bold":false,"italic":false}

execute if score @s mck_scene_anim matches 2 run tag @s remove phone_bar

execute if score @s mck_scene matches 15 if score @s mck_scene_anim matches 2.. run scoreboard players remove @s mck_scene_anim 1