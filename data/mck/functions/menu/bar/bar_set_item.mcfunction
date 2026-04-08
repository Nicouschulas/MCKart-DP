item replace entity @s inventory.0 with gold_nugget{display:{Name:'{"translate":"menu.bar.play","color":"#80B524","bold":true,"italic":false}'},CustomModelData:101,killme:1b} 1
item replace entity @s inventory.1 with gold_nugget{display:{Name:'{"translate":"menu.bar.tracks","color":"#61B5FF","bold":true,"italic":false}'},CustomModelData:104,killme:1b} 1
execute unless score @s mck_page matches 1 if score @s mck_lobby matches 1.. if score @s mck_sel_track matches 0 run item replace entity @s inventory.1 with gold_nugget{display:{Name:'{"translate":"menu.bar.tracks","color":"#61B5FF","bold":true,"italic":false}'},CustomModelData:131,killme:1b} 1
item replace entity @s inventory.2 with gold_nugget{display:{Name:'{"translate":"menu.bar.spectate","color":"#779799","bold":true,"italic":false}'},CustomModelData:105,killme:1b} 1
item replace entity @s inventory.3 with gold_nugget{display:{Name:'{"translate":"menu.bar.cosmetics","color":"#683BFF","bold":true,"italic":false}'},CustomModelData:106,killme:1b} 1



scoreboard players set ready mck_temp 0
execute if score @s mck_quest1 matches -2 run scoreboard players add ready mck_temp 1
execute if score @s mck_quest2 matches -2 run scoreboard players add ready mck_temp 1
execute if score @s mck_quest3 matches -2 run scoreboard players add ready mck_temp 1
execute if score @s mck_quest1 matches -1 run scoreboard players set ready mck_temp 3
execute if score @s mck_quest2 matches -1 run scoreboard players set ready mck_temp 3
execute if score @s mck_quest3 matches -1 run scoreboard players set ready mck_temp 3

item replace entity @s inventory.5 with gold_nugget{display:{Name:'{"translate":"menu.bar.challenges","color":"#EBC20F","bold":true,"italic":false}'},CustomModelData:128,killme:1b} 1
execute unless score @s mck_page matches 7 if score ready mck_temp matches 3.. run item replace entity @s inventory.5 with gold_nugget{display:{Name:'{"translate":"menu.bar.challenges","color":"#EBC20F","bold":true,"italic":false}'},CustomModelData:133,killme:1b} 1
item replace entity @s inventory.6 with gold_nugget{display:{Name:'{"translate":"menu.bar.stats","color":"#0CC776","bold":true,"italic":false}'},CustomModelData:176,killme:1b} 1
item replace entity @s inventory.7 with gold_nugget{display:{Name:'{"translate":"menu.bar.warp","color":"#8CDDFF","bold":true,"italic":false}'},CustomModelData:177,killme:1b} 1
execute unless score @s mck_lobby matches 0 run item replace entity @s inventory.7 with carved_pumpkin{display:{Name:'{"text":" "}'},menu:1b,killme:1b}
execute unless score @s mck_status matches 0 run item replace entity @s inventory.7 with carved_pumpkin{display:{Name:'{"text":" "}'},menu:1b,killme:1b}
item replace entity @s inventory.8 with gold_nugget{display:{Name:'{"translate":"menu.bar.settings","color":"#E0E0E0","bold":true,"italic":false}'},CustomModelData:178,killme:1b} 1