kill @e[tag=stun_coin,type=item,distance=..5]
execute if score @s mck_coins matches 1.. run summon item ~ ~ ~ {Age:5900,PickupDelay:32767,Motion:[0.165,0.35,0.0],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,components:{minecraft:custom_model_data:1000}},Tags:["coin","stun_coin"]}
execute if score @s mck_coins matches 2.. run summon item ~ ~ ~ {Age:5900,PickupDelay:32767,Motion:[-0.12,0.35,-0.15],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,components:{minecraft:custom_model_data:1000}},Tags:["coin","stun_coin"]}
execute if score @s mck_coins matches 3.. run summon item ~ ~ ~ {Age:5900,PickupDelay:32767,Motion:[-0.12,0.35,0.15],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,components:{minecraft:custom_model_data:1000}},Tags:["coin","stun_coin"]}

scoreboard players operation temp mck_temp = @s mck_id
execute unless entity @s[type=player] run scoreboard players set temp mck_temp 0
execute as @e[type=item,tag=stun_coin,distance=..0.001,limit=3] run scoreboard players operation @s mck_spectate = temp mck_temp

scoreboard players remove @s mck_coins 3
execute if score @s mck_coins matches ..-1 run scoreboard players set @s mck_coins 0