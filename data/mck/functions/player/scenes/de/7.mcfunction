execute if score @s mck_scene_anim matches 250 run playsound custom:de.start.manager6 master @s ~ ~ ~ 1 1
execute if score @s mck_scene_anim matches 250 run tag @s add phone_bar
execute if score @s mck_scene_anim matches 250 run bossbar set phone players @a[tag=phone_bar]

execute if score @s mck_scene_anim matches 250 run effect give @s invisibility infinite 0 true

execute if score @s mck_scene_anim matches 185..250 run title @s actionbar {"translate":"subtitles.manager33","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 80..185 run title @s actionbar {"translate":"subtitles.manager34","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 1..80 run title @s actionbar {"translate":"subtitles.manager35","color":"#DEDEDE","bold":false,"italic":false}

execute if score @s mck_scene_anim matches 2 run tag @s remove phone_bar
execute if score @s mck_scene_anim matches 140 run scoreboard players set @s mck_page -10
execute if score @s mck_scene_anim matches 140 run function mck:player/show_menu
execute if score @s mck_scene_anim matches ..120 run title @s subtitle {"translate":"subtitles.open_menu","color":"white","bold":false,"italic":false}
execute if score @s mck_scene_anim matches ..120 run title @s times 0 10 3
execute if score @s mck_scene_anim matches ..120 run title @s title ""

execute if score @s mck_scene matches 12 if score @s mck_scene_anim matches 2.. run scoreboard players remove @s mck_scene_anim 1