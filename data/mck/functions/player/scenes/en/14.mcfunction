execute if score @s mck_scene_anim matches 560 run title @s actionbar ""
execute if score @s mck_scene_anim matches 560 run title @s times 0 10 20
execute if score @s mck_scene_anim matches 560 run title @s subtitle ""
execute if score @s mck_scene_anim matches 560 run title @s title "\ue000"
execute if score @s mck_scene_anim matches 560 run data modify storage pcd:database load set value ["Managerquest"]
execute if score @s mck_scene_anim matches 560 run function pcd.user:start

execute if score @s mck_scene_anim matches 530 run title @s times 10 70 10
execute if score @s mck_scene_anim matches 530 run title @s subtitle {"translate":"warp.point1","color":"#91E3BD","bold":true,"italic":false}
execute if score @s mck_scene_anim matches 530 run title @s title ""

execute if score @s mck_scene_anim matches 520 run playsound custom:en.end.manager2 master @s ~ ~ ~ 0.7 1


execute if score @s mck_scene_anim matches 180 run scoreboard players set @s mck_goods_id 34
execute if score @s mck_scene_anim matches 180 run function mck:player/gitgud/gitgud


execute if score @s mck_scene_anim matches 100 run tp @s -753.68 140.00 -1626.72 2294.64 2.10
execute if score @s mck_scene_anim matches 100 run gamemode adventure

execute if score @s mck_scene_anim matches 440..520 run title @s actionbar {"translate":"subtitles.manager56","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 320..440 run title @s actionbar {"translate":"subtitles.manager57","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 250..320 run title @s actionbar {"translate":"subtitles.manager58","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 170..250 run title @s actionbar {"translate":"subtitles.manager59","color":"#DEDEDE","bold":false,"italic":false}


execute if score @s mck_scene matches 19 if score @s mck_scene_anim matches 1.. run scoreboard players remove @s mck_scene_anim 1
execute if score @s mck_scene_anim matches 60 if score @s mck_challenge_level matches 10 if score @s mck_quest3 matches 0.. run scoreboard players add @s mck_quest3 1
execute if score @s mck_scene_anim matches 60 run function mck:player/challenges/reached
execute if score @s mck_scene_anim matches 40 run scoreboard players set @s mck_scene_anim 0
execute if score @s mck_scene matches 19 if score @s mck_scene_anim matches 0 run scoreboard players set @s mck_scene 0