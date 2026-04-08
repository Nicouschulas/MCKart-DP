execute if score @s mck_scene_anim matches 655 run stopsound @s player
execute if score @s mck_scene_anim matches 655 run scoreboard players set @s mck_sound_engine 640

execute if score @s mck_scene_anim matches 655 run playsound custom:en.start.manager3 master @s ~ ~ ~ 1 1
execute if score @s mck_scene_anim matches 655 run tag @s add phone_bar
execute if score @s mck_scene_anim matches 655 run bossbar set phone players @a[tag=phone_bar]

execute if score @s mck_scene_anim matches 600..645 run title @s actionbar {"translate":"subtitles.manager15","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 525..600 run title @s actionbar {"translate":"subtitles.manager16","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 460..525 run title @s actionbar {"translate":"subtitles.manager17","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 380..460 run title @s actionbar {"translate":"subtitles.manager18","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 310..380 run title @s actionbar {"translate":"subtitles.manager19","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 250..310 run title @s actionbar {"translate":"subtitles.manager20","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 205..250 run title @s actionbar {"translate":"subtitles.manager21","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 110..205 run title @s actionbar {"translate":"subtitles.manager22","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 62..110 run title @s actionbar {"translate":"subtitles.manager23","color":"#DEDEDE","bold":false,"italic":false}

execute if score @s mck_scene_anim matches 18.. run scoreboard players remove @s mck_speed 4
execute if score @s mck_scene_anim matches 18.. if score @s mck_speed matches ..-3 run scoreboard players set @s mck_speed -2
execute if score @s mck_scene_anim matches 18.. run scoreboard players set @s mck_brake 0
execute if score @s mck_scene_anim matches 18.. on vehicle run scoreboard players set @s mck_drift 0
execute if score @s mck_scene_anim matches 18 run tag @s remove phone_bar

execute if score @s mck_scene_anim matches 1 if entity @s[x=-2000221,y=101,z=139,dx=13,dy=3,dz=2] run scoreboard players set @s mck_scene 10
execute if score @s mck_scene_anim matches 1 if entity @s[x=-2000221,y=101,z=139,dx=13,dy=3,dz=2] run function mck:player/scenes/start

execute if score @s mck_scene matches 9 if score @s mck_scene_anim matches 2.. run scoreboard players remove @s mck_scene_anim 1