summon snowball ^ ^2.8 ^2.5 {Motion:[0.0,1.0,0.0],Tags:["fire_ball"],Item:{id:"minecraft:fire_charge",Count:1b}}

execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^0.0 ^2.3 {Tags:["fireball_area"]}

execute as @e[tag=fire_ball,type=snowball,limit=1,sort=nearest] run data modify entity @s Motion set from entity @e[type=area_effect_cloud,tag=fireball_area,limit=1] Pos
kill @e[tag=fireball_area,type=area_effect_cloud]


execute if entity @s[type=player] run scoreboard players operation @e[tag=fire_ball,type=snowball,limit=1,sort=nearest] mck_id = @s mck_id

playsound minecraft:entity.ghast.shoot master @a[scores={mck_setting1=1}] ~ ~ ~ 1 1.2