execute if score @s mck_scene_anim matches 380 run playsound custom:de.start.manager2 master @s ~ ~ ~ 1 1
execute if score @s mck_scene_anim matches 380 run tag @s add phone_bar
execute if score @s mck_scene_anim matches 380 run bossbar set phone players @a[tag=phone_bar]

execute if score @s mck_scene_anim matches 340..380 run title @s actionbar {"translate":"subtitles.manager8","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 310..340 run title @s actionbar {"translate":"subtitles.manager9","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 260..310 run title @s actionbar {"translate":"subtitles.manager10","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 200..260 run title @s actionbar {"translate":"subtitles.manager11","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 130..200 run title @s actionbar {"translate":"subtitles.manager12","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 60..130 run title @s actionbar {"translate":"subtitles.manager13","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 22..60 run title @s actionbar {"translate":"subtitles.manager14","color":"#DEDEDE","bold":false,"italic":false}

execute if score @s mck_scene_anim matches 330 run title @s times 15 15 10
execute if score @s mck_scene_anim matches 330 run title @s subtitle ""
execute if score @s mck_scene_anim matches 330 run title @s title "\uE000"

execute if score @s mck_scene_anim matches 315 run tp @s -2000000 101 0 0 0
execute if score @s mck_scene_anim matches 315 run effect give @s invisibility infinite 1 true
execute if score @s mck_scene_anim matches 300 run tp @s -2000000 101 0 0 0
execute if score @s mck_scene_anim matches 300 at @s run function driver:join
execute if score @s mck_scene_anim matches 300 run scoreboard players set @s mck_sound_engine 300

execute if score @s mck_scene_anim matches 40 run function mck:player/regions/play

execute if score @s mck_scene_anim matches 62 run title @s times 2 12 6
execute if score @s mck_scene_anim matches 62 run title @s subtitle {"text": "3","bold": true,"color": "red"}
execute if score @s mck_scene_anim matches 62 run title @s title ""

execute if score @s mck_scene_anim matches 42 run title @s times 2 12 6
execute if score @s mck_scene_anim matches 42 run title @s subtitle {"text": "2","bold": true,"color": "gold"}
execute if score @s mck_scene_anim matches 42 run title @s title ""

execute if score @s mck_scene_anim matches 22 run title @s times 2 12 6
execute if score @s mck_scene_anim matches 22 run title @s subtitle {"text": "1","bold": true,"color": "dark_green"}
execute if score @s mck_scene_anim matches 22 run title @s title ""

execute if score @s mck_scene_anim matches 2 run title @s times 2 22 6
execute if score @s mck_scene_anim matches 2 run title @s subtitle {"translate":"lobby.go","bold": true,"color": "#EEEEEE"}
execute if score @s mck_scene_anim matches 2 run title @s title ""

execute if score @s mck_scene_anim matches 2.. run scoreboard players set @s mck_speed -2
execute if score @s mck_scene_anim matches 2.. run scoreboard players set @s mck_brake 0
execute if score @s mck_scene_anim matches 2.. on vehicle run scoreboard players set @s mck_drift 0
execute if score @s mck_scene_anim matches 2 run effect clear @s invisibility
execute if score @s mck_scene_anim matches 2 run tag @s remove phone_bar

execute if score @s mck_scene_anim matches 1 if entity @s[x=-2000095,y=101,z=97,dx=4,dy=3,dz=9] run scoreboard players set @s mck_scene 9
execute if score @s mck_scene_anim matches 1 if entity @s[x=-2000095,y=101,z=97,dx=4,dy=3,dz=9] run function mck:player/scenes/start

execute if score @s mck_scene matches 8 if score @s mck_scene_anim matches 2.. run scoreboard players remove @s mck_scene_anim 1