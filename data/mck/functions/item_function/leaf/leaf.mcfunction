scoreboard players set @s mck_leaf 12
execute if entity @s[tag=!bot] on vehicle on passengers if entity @s[tag=item_mount] run scoreboard players set @s mck_timer 5
execute if entity @s[tag=bot] on passengers if entity @s[tag=item_mount] run scoreboard players set @s mck_timer 5

execute if score @s mck_blue_id matches 1.. run playsound minecraft:item.shield.block master @s[scores={mck_setting1=1}] ~ ~ ~ 1 0.8
execute if score @s mck_blue_id matches 1.. run item replace entity @s armor.head with air
execute if score @s mck_blue_id matches 1.. if score @s mck_challenge_level matches 7 if score @s mck_quest1 matches 0.. run scoreboard players add @s mck_quest1 1
execute if score @s mck_red_id matches 1.. run playsound minecraft:item.shield.block master @s[scores={mck_setting1=1}] ~ ~ ~ 1 0.8
execute if score @s mck_red_id matches 1.. run item replace entity @s armor.head with air
execute if score @s mck_red_id matches 1.. if score @s mck_challenge_level matches 7 if score @s mck_quest1 matches 0.. run scoreboard players add @s mck_quest1 1
scoreboard players reset @s mck_blue_id
scoreboard players reset @s mck_red_id
playsound minecraft:entity.player.attack.sweep master @a[scores={mck_setting1=1}] ~ ~ ~ 1 0.7

execute as @e[type=fox,distance=0.4..2.7] run scoreboard players remove @s mck_speed 50


execute as @e[tag=banana,type=item,distance=..6] at @s run function mck:item_function/leaf/bananas
execute as @e[tag=bomb,type=item,distance=..6] at @s run function mck:item_function/leaf/bombs
execute as @e[tag=fake_itembox,type=end_crystal,distance=..6] at @s run function mck:item_function/leaf/fake_itemboxes