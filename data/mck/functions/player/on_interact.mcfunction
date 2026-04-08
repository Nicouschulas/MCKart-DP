advancement revoke @s only mck:on_interact


# shop stuff
scoreboard players set temp mck_temp 0
scoreboard players operation old mck_temp = @s mck_goods_id



scoreboard players set type_of mck_temp 0

tag @s add this
execute as @e[type=interaction,distance=..6] run function mck:find_interaction
tag @s remove this




execute if score type_of mck_temp matches 1 run function mck:player/interactions/shop

execute if score type_of mck_temp matches 2..3 run playsound ui.button.click master @s[scores={mck_setting1=1}] ~ ~ ~ 0.3 0.9

execute if score type_of mck_temp matches 5 run function mck:player/lootbox/hit




tag @e[type=interaction,distance=..6,tag=this_interaction] remove this_interaction