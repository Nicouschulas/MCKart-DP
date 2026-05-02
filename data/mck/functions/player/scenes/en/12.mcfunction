execute if score @s mck_scene_anim matches 110 run playsound custom:en.start.manager11 master @s ~ ~ ~ 1 1
execute if score @s mck_scene_anim matches 110 run tag @s add phone_bar
execute if score @s mck_scene_anim matches 110 run bossbar set phone players @a[tag=phone_bar]

execute if score @s mck_scene_anim matches 2..110 run tp @s -264.5 75 -44.5 180 0
execute if score @s mck_scene_anim matches 80 run stopsound @s ambient
execute if score @s mck_scene_anim matches 80 run function mck:player/regions/update
execute if score @s mck_scene_anim matches 80 run function mck:player/regions/play

execute if score @s mck_scene_anim matches 110 run effect clear @s invisibility
execute if score @s mck_scene_anim matches 110 run scoreboard players set @s mck_page 0
execute if score @s mck_scene_anim matches 110 run function mck:player/hide_menu

execute if score @s mck_scene_anim matches 2 run tag @s remove phone_bar
execute if score @s mck_scene_anim matches 2 if score @s mck_challenge_level matches 1 if score @s mck_quest2 matches 0.. run scoreboard players add @s mck_quest2 1
execute if score @s mck_scene_anim matches 2 run function mck:player/challenges/reached
execute if score @s mck_scene_anim matches 2 run function mck:player/show_menu

execute if score @s mck_scene_anim matches 2 run scoreboard players operation @s mck_goods_id = lootbox.id mck_goods_id
execute if score @s mck_scene_anim matches 2 run function mck:player/gitgud/gitgud

execute if score @s mck_scene matches 17 if score @s mck_scene_anim matches 1.. run scoreboard players remove @s mck_scene_anim 1
execute if score @s mck_scene matches 17 if score @s mck_scene_anim matches 0 run scoreboard players set @s mck_scene 0