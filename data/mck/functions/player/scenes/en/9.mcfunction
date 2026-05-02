execute if score @s mck_scene_anim = 240 run stopsound @s master custom:en.start.manager7
execute if score @s mck_scene_anim = 240 run playsound custom:en.start.manager8 master @s ~ ~ ~ 1 1
execute if score @s mck_scene_anim = 240 run tag @s add phone_bar
execute if score @s mck_scene_anim = 240 run bossbar set phone players @a[tag=phone_bar]
execute if score @s mck_scene_anim = 240 run function mck:menu/draw

execute if score @s mck_scene_anim = 240 run effect give @s invisibility infinite 0 true

execute if score @s mck_scene_anim >= 170 and score @s mck_scene_anim <= 240 run title @s actionbar {"translate":"subtitles.manager43","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim >= 70 and score @s mck_scene_anim < 170 run title @s actionbar {"translate":"subtitles.manager44","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim > 1 and score @s mck_scene_anim <= 70 run title @s actionbar {"translate":"subtitles.manager45","color":"#DEDEDE","bold":false,"italic":false}

execute if score @s mck_scene_anim = 2 run tag @s remove phone_bar

execute if score @s mck_scene = 14 and score @s mck_scene_anim >= 2 run scoreboard players remove @s mck_scene_anim 1