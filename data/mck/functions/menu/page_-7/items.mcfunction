item replace entity @s inventory.22 with air


item replace entity @s inventory.13 with gold_nugget{display:{Name:'{"translate":"menu.page.confirm.sure","color":"#E0E0E0","bold":true,"italic":false}'},CustomModelData:134,menu:1b,killme:1b} 1

item replace entity @s inventory.20 with gold_nugget{display:{Name:'{"translate":"menu.page.confirm.yes","color":"#7dbf4b","bold":true,"italic":false}'},CustomModelData:135,menu:1b,killme:1b} 1
item replace entity @s inventory.24 with gold_nugget{display:{Name:'{"translate":"menu.page.confirm.no","color":"#FF6040","bold":true,"italic":false}'},CustomModelData:136,menu:1b,killme:1b} 1

execute if score @s mck_player_menu matches 3 run item replace entity @s inventory.22 with gold_nugget{display:{Name:'{"text":" "}'},CustomModelData:150,menu:1b,killme:1b} 1

item replace entity @s inventory.4 with gold_nugget{display:{Name:'{"text":" "}'},CustomModelData:10010,killme:1b} 1