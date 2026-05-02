execute if score @s mck_scene_anim matches 2 run tp @s ~ ~10 ~ ~ ~
execute if score @s mck_scene_anim matches 2 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 1

execute if score @s mck_scene_anim matches 1 run item replace entity @s weapon.mainhand with carrot_on_a_stick[killme=1b,CustomModelData=999999,display:{Name:'{"text":" "}'}]
execute if score @s mck_scene_anim matches 1 if score @s mck_setting9 matches 1 run title @s subtitle [{"translate":"scene.fist_join.setting2.actionbar","color":"#DEDEDE","bold":false,"italic":false},{"translate":"scene.fist_join.setting2.option1","color":"#BFD0F2","bold":true,"italic":false}]
execute if score @s mck_scene_anim matches 1 if score @s mck_setting9 matches 0 run title @s subtitle [{"translate":"scene.fist_join.setting2.actionbar","color":"#DEDEDE","bold":false,"italic":false},{"translate":"scene.fist_join.setting2.option3","color":"#F2DEBA","bold":true,"italic":false}]
execute if score @s mck_scene_anim matches 1 run title @s times 0 10 0
execute if score @s mck_scene_anim matches 1 run title @s title ""

execute if score @s mck_scene_anim matches 1 if score @s mck_use matches 1.. run scoreboard players set step mck_temp 0
execute if score @s mck_scene_anim matches 1 if score @s mck_use matches 1.. run scoreboard players set bool mck_temp 0
execute if score @s mck_scene_anim matches 1 if score @s mck_use matches 1.. at @s positioned ~ ~1.6 ~ run function mck:player/scenes/first_join/raycast
execute if score @s mck_scene_anim matches 1 if score @s mck_use matches 1.. if score bool mck_temp matches 1 run scoreboard players set @s mck_setting9 1
execute if score @s mck_scene_anim matches 1 if score @s mck_use matches 1.. if score bool mck_temp matches 1 run playsound custom:en.example master @s -1000001 112 -3
execute if score @s mck_scene_anim matches 1 if score @s mck_use matches 1.. if score bool mck_temp matches 2 run scoreboard players set @s mck_scene 3

execute if score @s mck_scene_anim matches 1 if score @s mck_use matches 1.. if score bool mck_temp matches 2 run function mck:player/scenes/start
execute if score @s mck_scene_anim matches 1 if score @s mck_use matches 1.. if score bool mck_temp matches 3 run scoreboard players set @s mck_setting9 0
execute if score @s mck_scene_anim matches 1 if score @s mck_use matches 1.. if score bool mck_temp matches 3 run playsound custom:de.example master @s -999999 112 -3

execute if score @s mck_scene matches 2 if score @s mck_scene_anim matches 2.. run scoreboard players remove @s mck_scene_anim 1