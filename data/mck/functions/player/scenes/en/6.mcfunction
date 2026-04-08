execute if score @s mck_scene_anim matches 200 run playsound custom:en.start.manager5 master @s ~ ~ ~ 1 1
execute if score @s mck_scene_anim matches 200 run tag @s add phone_bar
execute if score @s mck_scene_anim matches 200 run bossbar set phone players @a[tag=phone_bar]

execute if score @s mck_scene_anim matches 200 run tp @s -2000216.5 72.0 293.5
execute if score @s mck_scene_anim matches 200 run title @s subtitle ""
execute if score @s mck_scene_anim matches 200 run title @s times 0 2 5
execute if score @s mck_scene_anim matches 200 run title @s title "\ue000"
execute if score @s mck_scene_anim matches 200 at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
execute if score @s mck_scene_anim matches 200 run effect give @s invisibility infinite 0 true

execute if score @s mck_scene_anim matches 190 run scoreboard players set @s mck_goods_id 10
execute if score @s mck_scene_anim matches 190 run function mck:player/gitgud/gitgud
execute if score @s mck_scene_anim matches 190 run scoreboard players set @s mck_goods_id 38
execute if score @s mck_scene_anim matches 190 run function mck:player/gitgud/gitgud

execute if score @s mck_scene_anim matches 120..200 run title @s actionbar {"translate":"subtitles.manager30","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 40..120 run title @s actionbar {"translate":"subtitles.manager31","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 20..40 run title @s actionbar {"translate":"subtitles.manager32","color":"#DEDEDE","bold":false,"italic":false}

execute if score @s mck_scene_anim matches 2 run scoreboard players set @s mck_scene 12
execute if score @s mck_scene_anim matches 2 run function mck:player/scenes/start

execute if score @s mck_scene matches 11 if score @s mck_scene_anim matches 2.. run scoreboard players remove @s mck_scene_anim 1