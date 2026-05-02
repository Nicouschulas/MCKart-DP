execute if score @s mck_scene_anim matches 570 run tp @s -342.12 109.00 508.88 950.19 -4.08
execute if score @s mck_scene_anim matches 570 run function mck:player/hide_menu
execute if score @s mck_scene_anim matches 570 run effect clear @s invisibility
execute if score @s mck_scene_anim matches 570 run playsound custom:ringtone master @s ~ ~ ~ 1 1
execute if score @s mck_scene_anim matches 490 run playsound custom:ringtone master @s ~ ~ ~ 1 1
execute if score @s mck_scene_anim matches 439 run stopsound @s master custom:ringtone
execute if score @s mck_scene_anim matches 438 run playsound custom:ringtone.pickup master @s ~ ~ ~ 1 1
execute if score @s mck_scene_anim matches 420 run playsound custom:de.start.manager1 master @s ~ ~ ~ 1 1
execute if score @s mck_scene_anim matches 420 run tag @s add phone_bar
execute if score @s mck_scene_anim matches 420 run bossbar set phone players @a[tag=phone_bar]

execute if score @s mck_scene_anim matches 360..420 run title @s actionbar {"translate":"subtitles.manager1","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 300..360 run title @s actionbar {"translate":"subtitles.manager2","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 250..300 run title @s actionbar {"translate":"subtitles.manager3","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 190..250 run title @s actionbar {"translate":"subtitles.manager4","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 130..190 run title @s actionbar {"translate":"subtitles.manager5","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 80..130 run title @s actionbar {"translate":"subtitles.manager6","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 20..80 run title @s actionbar {"translate":"subtitles.manager7","color":"#DEDEDE","bold":false,"italic":false}

execute if score @s mck_scene matches 7 if score @s mck_scene_anim matches 2.. run scoreboard players remove @s mck_scene_anim 1