scoreboard players set @s mck_scene 0
scoreboard players set @s mck_scene_anim 0
stopsound @s
tp @s -264.5 75 -44.5 180 0
function mck:player/show_menu
effect clear @s invisibility

scoreboard players set @s mck_goods_id 10
function mck:player/gitgud/gitgud
scoreboard players set @s mck_goods_id 38
function mck:player/gitgud/gitgud

scoreboard players operation @s mck_goods_id = lootbox.id mck_goods_id
function mck:player/gitgud/gitgud

tag @s remove phone_bar

execute if score @s mck_challenge_level matches 1 if score @s mck_quest2 matches 0.. run scoreboard players add @s mck_quest2 1
function mck:player/challenges/reached


scoreboard players set @s mck_region 14
execute at @s run function mck:player/regions/play