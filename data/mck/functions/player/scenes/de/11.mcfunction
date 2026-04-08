execute if score @s mck_scene_anim matches 130 run stopsound @s master custom:de.start.manager8
execute if score @s mck_scene_anim matches 130 run playsound custom:de.start.manager9 master @s ~ ~ ~ 1 1
execute if score @s mck_scene_anim matches 130 run tag @s add phone_bar
execute if score @s mck_scene_anim matches 130 run bossbar set phone players @a[tag=phone_bar]

execute if score @s mck_scene_anim matches 130 run effect give @s invisibility infinite 0 true

execute if score @s mck_scene_anim matches 50..130 run title @s actionbar {"translate":"subtitles.manager47","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 2..50 run title @s actionbar {"translate":"subtitles.manager48","color":"#DEDEDE","bold":false,"italic":false}


execute if score @s mck_scene_anim matches 12 run title @s times 10 120 40
execute if score @s mck_scene_anim matches 12 run title @s subtitle "\ue000"
execute if score @s mck_scene_anim matches 12 run title @s title "\uaab7"

execute if score @s mck_scene_anim matches 2 run scoreboard players set @s mck_scene 17
execute if score @s mck_scene_anim matches 2 run function mck:player/scenes/start

execute if score @s mck_scene matches 16 if score @s mck_scene_anim matches 2.. run scoreboard players remove @s mck_scene_anim 1