execute if score @s mck_scene_anim matches 1130 run tp @s -342.12 109.00 508.88 950.19 -4.08
execute if score @s mck_scene_anim matches 1140 run clear @s
execute if score @s mck_scene_anim matches 1130 run function mck:player/hide_menu
execute if score @s mck_scene_anim matches 1130 run title @s times 0 40 20
execute if score @s mck_scene_anim matches 1140 run title @s subtitle "\uE000"
execute if score @s mck_scene_anim matches 1140 run title @s title "\uaab7"

execute if score @s mck_scene_anim matches 1120 run playsound custom:intro master @s ~ ~ ~ 0.6 1
execute if score @s mck_scene_anim matches 1100 run data modify storage pcd:database load set value ["Intro1","Intro2","Intro3","Intro4","Intro5"]
execute if score @s mck_scene_anim matches 1100 run function pcd.user:start

execute if score @s mck_scene_anim matches 1080 run playsound custom:en.start.narrator1 master @s ~ ~ ~ 0.7 1
execute if score @s mck_scene_anim matches 1030..1080 run title @s actionbar {"translate":"subtitles.narrator1","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 980..1030 run title @s actionbar {"translate":"subtitles.narrator2","color":"#DEDEDE","bold":false,"italic":false}

execute if score @s mck_scene_anim matches 824 run playsound custom:en.start.narrator2 master @s ~ ~ ~ 2 1
execute if score @s mck_scene_anim matches 740..824 run title @s actionbar {"translate":"subtitles.narrator3","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 680..740 run title @s actionbar {"translate":"subtitles.narrator4","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 620..680 run title @s actionbar {"translate":"subtitles.narrator5","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 618..620 run title @s actionbar {"translate":"subtitles.narrator6","color":"#DEDEDE","bold":false,"italic":false}

execute if score @s mck_scene_anim matches 2 run scoreboard players reset @s pcd.id
execute if score @s mck_scene_anim matches 2 run gamemode adventure @s
execute if score @s mck_scene_anim matches 2 run scoreboard players set @s mck_scene 7
execute if score @s mck_scene_anim matches 2 run function mck:player/scenes/start

execute if score @s mck_scene matches 6 if score @s mck_scene_anim matches 2.. run scoreboard players remove @s mck_scene_anim 1