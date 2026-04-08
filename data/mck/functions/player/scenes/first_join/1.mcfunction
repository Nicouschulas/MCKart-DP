execute if score @s mck_scene_anim matches 2 run tp @s -1000000 101 0 180 0
execute if score @s mck_scene_anim matches 2 run effect give @s invisibility infinite 1 true
execute if score @s mck_scene_anim matches 2 run gamemode adventure @s
execute if score @s mck_scene_anim matches 2 run team join intro @s
execute if score @s mck_scene_anim matches 2 run function builder:leave
execute if score @s mck_scene_anim matches 2 run function mck:menu/page_lobby/leave
execute if score @s mck_scene_anim matches 2 run function mck:player/hide_menu

# select nothing goods
execute if score @s mck_scene_anim matches 2 run scoreboard players set @s mck_goods_id 1
execute if score @s mck_scene_anim matches 2 run function mck:player/gitgud/gitgud
execute if score @s mck_scene_anim matches 2 run scoreboard players set @s mck_goods_id 2
execute if score @s mck_scene_anim matches 2 run function mck:player/gitgud/gitgud
execute if score @s mck_scene_anim matches 2 run scoreboard players set @s mck_goods_id 3
execute if score @s mck_scene_anim matches 2 run function mck:player/gitgud/gitgud
execute if score @s mck_scene_anim matches 2 run scoreboard players set @s mck_goods_id 4
execute if score @s mck_scene_anim matches 2 run function mck:player/gitgud/gitgud

execute if score @s mck_scene_anim matches 2 run tellraw @s " "
execute if score @s mck_scene_anim matches 2 run tellraw @s " "
execute if score @s mck_scene_anim matches 2 run tellraw @s " "
execute if score @s mck_scene_anim matches 2 run tellraw @s " "
execute if score @s mck_scene_anim matches 2 run tellraw @s " "
execute if score @s mck_scene_anim matches 2 run tellraw @s [{"text":"           #      ","color":"white","bold":true,"italic":false,"obfuscated":true},{"translate":"scene.first_join.title1","color":"#CCECFF","bold":true,"italic":false,"obfuscated":false},{"text":"      #","color":"white","bold":true,"italic":false,"obfuscated":true}]
execute if score @s mck_scene_anim matches 2 run tellraw @s "                       \uaab7"
execute if score @s mck_scene_anim matches 2 run tellraw @s " "
execute if score @s mck_scene_anim matches 2 run tellraw @s " "
execute if score @s mck_scene_anim matches 2 run tellraw @s {"translate":"scene.first_join.title2","color":"#E8E8E8","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 2 run tellraw @s {"translate":"scene.first_join.title3","color":"#E8E8E8","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 2 run tellraw @s " "
execute if score @s mck_scene_anim matches 2 run tellraw @s {"translate":"scene.first_join.title4","color":"#B3D8E8","bold":true,"italic":false}
execute if score @s mck_scene_anim matches 2 run tellraw @s " "

execute if score @s mck_scene_anim matches 1 run item replace entity @s weapon.mainhand with carrot_on_a_stick{killme:1b,CustomModelData:999999,display:{Name:'{"text":" "}'}}

execute if score @s mck_scene_anim matches 1 if score @s mck_use matches 1.. run scoreboard players set step mck_temp 0
execute if score @s mck_scene_anim matches 1 if score @s mck_use matches 1.. run scoreboard players set bool mck_temp 0
execute if score @s mck_scene_anim matches 1 if score @s mck_use matches 1.. at @s positioned ~ ~1.6 ~ run function mck:player/scenes/first_join/raycast
execute if score @s mck_scene_anim matches 1 if score @s mck_use matches 1.. if score bool mck_temp matches 1 run playsound minecraft:entity.villager.work_librarian master @s
execute if score @s mck_scene_anim matches 1 if score @s mck_use matches 1.. if score bool mck_temp matches 1 run tellraw @s [{"translate":"scene.fist_join.setting1.download","fallback":" Download link: ","color":"white","bold":true,"italic":false},{"text":"https://repo.skyblocksquad.de/resources/MCKart-RP-PUBLIC.zip","color":"#B0C2FF","bold":false,"italic":false,"underlined":true,"clickEvent":{"action":"open_url","value":"https://repo.skyblocksquad.de/resources/MCKart-RP-PUBLIC.zip"}}]
execute if score @s mck_scene_anim matches 1 if score @s mck_use matches 1.. if score bool mck_temp matches 2 run scoreboard players set @s mck_scene 2
execute if score @s mck_scene_anim matches 1 if score @s mck_use matches 1.. if score bool mck_temp matches 2 run function mck:player/scenes/start

execute if score @s mck_scene matches 1 if score @s mck_scene_anim matches 2.. run scoreboard players remove @s mck_scene_anim 1