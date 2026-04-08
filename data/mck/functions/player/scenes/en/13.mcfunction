execute if score @s mck_scene_anim matches 670 run playsound custom:ringtone master @s ~ ~ ~ 1 1
execute if score @s mck_scene_anim matches 590 run playsound custom:ringtone master @s ~ ~ ~ 1 1
execute if score @s mck_scene_anim matches 539 run stopsound @s master custom:ringtone
execute if score @s mck_scene_anim matches 538 run playsound custom:ringtone.pickup master @s ~ ~ ~ 1 1
execute if score @s mck_scene_anim matches 520 run playsound custom:en.end.manager1 master @s ~ ~ ~ 1 1
execute if score @s mck_scene_anim matches 520 run tag @s add phone_bar
execute if score @s mck_scene_anim matches 520 run bossbar set phone players @a[tag=phone_bar]

execute if score @s mck_scene_anim matches 440..510 run title @s actionbar {"translate":"subtitles.manager49","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 380..440 run title @s actionbar {"translate":"subtitles.manager50","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 290..380 run title @s actionbar {"translate":"subtitles.manager51","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 210..290 run title @s actionbar {"translate":"subtitles.manager52","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 160..210 run title @s actionbar {"translate":"subtitles.manager53","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 105..160 run title @s actionbar {"translate":"subtitles.manager54","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 50..105 run title @s actionbar {"translate":"subtitles.manager55","color":"#DEDEDE","bold":false,"italic":false}

execute if score @s mck_scene_anim matches 2 run tag @s remove phone_bar

execute if score @s mck_scene matches 18 if score @s mck_scene_anim matches 1.. run scoreboard players remove @s mck_scene_anim 1
execute if score @s mck_scene matches 18 if score @s mck_scene_anim matches 0 run scoreboard players set @s mck_scene 0