item replace entity @s inventory.22 with air

item replace entity @s inventory.9 with gold_nugget[minecraft:custom_model_data=151,menu:1b,killme:1b] 1
item modify entity @s inventory.9 mck:setting1

item replace entity @s inventory.11 with gold_nugget[minecraft:custom_model_data=153,menu:1b,killme:1b] 1
item modify entity @s inventory.11 mck:setting2

item replace entity @s inventory.15 with gold_nugget[minecraft:custom_model_data=155,menu:1b,killme:1b] 1
item modify entity @s inventory.15 mck:setting3

item replace entity @s inventory.20 with gold_nugget[minecraft:custom_model_data=157,menu:1b,killme:1b] 1
item modify entity @s inventory.20 mck:setting4

item replace entity @s inventory.18 with gold_nugget[minecraft:custom_model_data=159,menu:1b,killme:1b] 1
item modify entity @s inventory.18 mck:setting5

item replace entity @s inventory.24 with gold_nugget[minecraft:custom_model_data=161,menu:1b,killme:1b] 1
item modify entity @s inventory.24 mck:setting6

item replace entity @s inventory.13 with gold_nugget[minecraft:custom_model_data=163,menu:1b,killme:1b] 1
item modify entity @s inventory.13 mck:setting7

item replace entity @s inventory.22 with gold_nugget[minecraft:custom_model_data=165,menu:1b,killme:1b] 1
item modify entity @s inventory.22 mck:setting8

item replace entity @s inventory.26 with gold_nugget[minecraft:custom_model_data=167,menu:1b,killme:1b] 1
item modify entity @s inventory.26 mck:setting9

execute if score @s mck_challenge_level matches 3.. run item replace entity @s inventory.17 with gold_nugget[minecraft:custom_model_data=169,menu:1b,killme:1b] 1
execute if score @s mck_challenge_level matches 3.. run item modify entity @s inventory.17 mck:setting10

item replace entity @s inventory.4 with gold_nugget[minecraft:item_name='{"text":" "}',minecraft:custom_model_data=10006,killme:1b] 1