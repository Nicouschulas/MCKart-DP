execute if score @s mck_scene_anim matches 655 run stopsound @s player
execute if score @s mck_scene_anim matches 655 run scoreboard players set @s mck_sound_engine 655

execute if score @s mck_scene_anim matches 655 run playsound custom:de.start.manager3 master @s ~ ~ ~ 1 1
execute if score @s mck_scene_anim matches 655 run tag @s add phone_bar
execute if score @s mck_scene_anim matches 655 run bossbar set phone players @a[tag=phone_bar]

execute if score @s mck_scene_anim matches 600..655 run title @s actionbar {"translate":"subtitles.manager15","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 525..600 run title @s actionbar {"translate":"subtitles.manager16","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 460..525 run title @s actionbar {"translate":"subtitles.manager17","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 370..460 run title @s actionbar {"translate":"subtitles.manager18","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 270..370 run title @s actionbar {"translate":"subtitles.manager19","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 200..270 run title @s actionbar {"translate":"subtitles.manager20","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 155..200 run title @s actionbar {"translate":"subtitles.manager21","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 70..155 run title @s actionbar {"translate":"subtitles.manager22","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 22..70 run title @s actionbar {"translate":"subtitles.manager23","color":"#DEDEDE","bold":false,"italic":false}

execute if score @s mck_scene_anim matches 2.. run scoreboard players remove @s mck_speed 4
execute if score @s mck_scene_anim matches 2.. if score @s mck_speed matches ..-3 run scoreboard players set @s mck_speed -2
execute if score @s mck_scene_anim matches 2.. run scoreboard players set @s mck_brake 0
execute if score @s mck_scene_anim matches 2.. on vehicle run scoreboard players set @s mck_drift 0
execute if score @s mck_scene_anim matches 2 run tag @s remove phone_bar

execute if score @s mck_scene_anim matches 1 if entity @s[x=-2000221,y=101,z=139,dx=13,dy=3,dz=2] run scoreboard players set @s mck_scene 10
execute if score @s mck_scene_anim matches 1 if entity @s[x=-2000221,y=101,z=139,dx=13,dy=3,dz=2] run function mck:player/scenes/start

execute if score @s mck_scene matches 9 if score @s mck_scene_anim matches 2.. run scoreboard players remove @s mck_scene_anim 1