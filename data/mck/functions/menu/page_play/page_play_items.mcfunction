item replace entity @s inventory.22 with air
data modify storage temp lobby set from storage lobby normal
scoreboard players set temp mck_temp 0
execute if data storage temp lobby[0] run function mck:menu/page_play/list_normal

data modify storage temp lobby set from storage lobby ranked
scoreboard players set temp mck_temp 0
execute if data storage temp lobby[0] run function mck:menu/page_play/list_ranked

item replace entity @s inventory.4 with gold_nugget{display:{Name:'{"text":" "}'},CustomModelData:10001,killme:1b} 1

execute if score @s mck_lobby matches 1.. run item replace entity @s inventory.0 with gold_nugget{display:{Name:'{"translate":"menu.page.lobby.back_to_lobby","color":"#A7FF7A","bold":true,"italic":false}'},CustomModelData:110,killme:1b} 1