execute unless score @s mck_scene matches 8..10 run function driver:leave
execute if score @s mck_scene matches 8..10 run tag @s add temp
execute if score @s mck_scene matches 8..10 run scoreboard players operation temp mck_temp = @s mck_id
execute if score @s mck_scene matches 8..10 as @e[type=fox,tag=kart,limit=1,sort=nearest] if score @s mck_id = temp mck_temp run ride @p[tag=temp] mount @s
execute if score @s mck_scene matches 8..10 run tag @s remove temp
execute unless score @s mck_scene matches 8..10 run function mck:menu/draw