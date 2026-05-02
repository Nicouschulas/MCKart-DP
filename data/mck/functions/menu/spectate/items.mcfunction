item replace entity @s inventory.22 with air
data modify storage temp lobby set from storage lobby normal
scoreboard players set temp mck_temp 0
execute if data storage temp lobby[0] run function mck:menu/spectate/list_normal

data modify storage temp lobby set from storage lobby ranked
scoreboard players set temp mck_temp 0
execute if data storage temp lobby[0] run function mck:menu/spectate/list_ranked

item replace entity @s inventory.4 with gold_nugget[minecraft:item_name:'{"text":" "}',minecraft:custom_model_data=10003,minecraft:killme=1b] 1