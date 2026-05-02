item replace entity @s inventory.22 with air

item replace entity @s inventory.13 with gold_nugget[minecraft:item_name='{"translate":"menu.page.confirm.sure","color":"#E0E0E0","bold":true,"italic":false}',minecraft:custom_model_data=134,minecraft:menu=1b,minecraft:killme=1b] 1

item replace entity @s inventory.20 with gold_nugget[minecraft:item_name='{"translate":"menu.page.confirm.yes","color":"#7dbf4b","bold":true,"italic":false}',minecraft:custom_model_data=135,minecraft:menu=1b,minecraft:killme=1b] 1
item replace entity @s inventory.24 with gold_nugget[minecraft:item_name='{"translate":"menu.page.confirm.no","color":"#FF6040","bold":true,"italic":false}',minecraft:custom_model_data=136,minecraft:menu=1b,minecraft:killme=1b] 1

execute if score @s mck_player_menu matches 3 run item replace entity @s inventory.22 with gold_nugget[minecraft:item_name='{"text":" "}',minecraft:custom_model_data=150,minecraft:menu=1b,minecraft:killme=1b] 1

item replace entity @s inventory.4 with gold_nugget[minecraft:item_name='{"text":" "}',minecraft:custom_model_data=10010,minecraft:killme=1b] 1