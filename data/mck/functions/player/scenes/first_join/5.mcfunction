execute if score @s mck_scene_anim matches 2 run tp @s ~ ~10 ~ ~ ~
execute if score @s mck_scene_anim matches 2 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 1


execute if score @s mck_scene_anim matches 1 run item replace entity @s weapon.mainhand with carrot_on_a_stick{killme:1b,CustomModelData:999999,display:{Name:'{"text":" "}'}}

execute if score @s mck_scene_anim matches 1 if score @s mck_use matches 1.. run scoreboard players set step mck_temp 0
execute if score @s mck_scene_anim matches 1 if score @s mck_use matches 1.. run scoreboard players set bool mck_temp 0
execute if score @s mck_scene_anim matches 1 if score @s mck_use matches 1.. at @s positioned ~ ~1.6 ~ run function mck:player/scenes/first_join/raycast
execute if score @s mck_scene_anim matches 1 if score @s mck_use matches 1.. if score bool mck_temp matches 1 run scoreboard players set @s mck_scene 6
execute if score @s mck_scene_anim matches 1 if score @s mck_use matches 1.. if score bool mck_temp matches 1 run function mck:player/scenes/start


execute if score @s mck_scene matches 5 if score @s mck_scene_anim matches 2.. run scoreboard players remove @s mck_scene_anim 1