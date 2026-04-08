item replace entity @s inventory.22 with air

scoreboard players operation lobbyid mck_temp = @s mck_spec_lobby
scoreboard players set players mck_temp 0
data remove storage temp id_list
execute as @a[scores={mck_lobby=1..}] if score @s mck_lobby = lobbyid mck_temp run function mck:menu/page_lobby/list_players

execute if score players mck_temp matches ..11 run item replace entity @s inventory.23 with carved_pumpkin{display:{Name:'{"text":" "}'},menu:1b,killme:1b}
execute if score players mck_temp matches ..10 run item replace entity @s inventory.22 with carved_pumpkin{display:{Name:'{"text":" "}'},menu:1b,killme:1b}
execute if score players mck_temp matches ..9 run item replace entity @s inventory.21 with carved_pumpkin{display:{Name:'{"text":" "}'},menu:1b,killme:1b}
execute if score players mck_temp matches ..8 run item replace entity @s inventory.20 with carved_pumpkin{display:{Name:'{"text":" "}'},menu:1b,killme:1b}
execute if score players mck_temp matches ..7 run item replace entity @s inventory.19 with carved_pumpkin{display:{Name:'{"text":" "}'},menu:1b,killme:1b}
execute if score players mck_temp matches ..6 run item replace entity @s inventory.18 with carved_pumpkin{display:{Name:'{"text":" "}'},menu:1b,killme:1b}

execute if score players mck_temp matches ..5 run item replace entity @s inventory.14 with carved_pumpkin{display:{Name:'{"text":" "}'},menu:1b,killme:1b}
execute if score players mck_temp matches ..4 run item replace entity @s inventory.13 with carved_pumpkin{display:{Name:'{"text":" "}'},menu:1b,killme:1b}
execute if score players mck_temp matches ..3 run item replace entity @s inventory.12 with carved_pumpkin{display:{Name:'{"text":" "}'},menu:1b,killme:1b}
execute if score players mck_temp matches ..2 run item replace entity @s inventory.11 with carved_pumpkin{display:{Name:'{"text":" "}'},menu:1b,killme:1b}
execute if score players mck_temp matches ..1 run item replace entity @s inventory.10 with carved_pumpkin{display:{Name:'{"text":" "}'},menu:1b,killme:1b}
execute if score players mck_temp matches ..0 run item replace entity @s inventory.9 with carved_pumpkin{display:{Name:'{"text":" "}'},menu:1b,killme:1b}

execute if score players mck_temp matches 1.. run item replace entity @s inventory.9 from block 0 0 0 container.0
execute if score players mck_temp matches 2.. run item replace entity @s inventory.10 from block 0 0 0 container.1
execute if score players mck_temp matches 3.. run item replace entity @s inventory.11 from block 0 0 0 container.2
execute if score players mck_temp matches 4.. run item replace entity @s inventory.12 from block 0 0 0 container.3
execute if score players mck_temp matches 5.. run item replace entity @s inventory.13 from block 0 0 0 container.4
execute if score players mck_temp matches 6.. run item replace entity @s inventory.14 from block 0 0 0 container.5
execute if score players mck_temp matches 7.. run item replace entity @s inventory.18 from block 0 0 0 container.6
execute if score players mck_temp matches 8.. run item replace entity @s inventory.19 from block 0 0 0 container.7
execute if score players mck_temp matches 9.. run item replace entity @s inventory.20 from block 0 0 0 container.8
execute if score players mck_temp matches 10.. run item replace entity @s inventory.21 from block 0 0 0 container.9
execute if score players mck_temp matches 11.. run item replace entity @s inventory.22 from block 0 0 0 container.10
execute if score players mck_temp matches 12.. run item replace entity @s inventory.23 from block 0 0 0 container.11



execute if score @s mck_lobby_type matches 0 if score @s mck_spec_lobby = @s mck_lobby if score @s mck_permission matches 2.. run item replace entity @s inventory.15 with gold_nugget{CustomModelData:138,menu:1b,killme:1b} 1
execute if score @s mck_lobby_type matches 0 if score @s mck_spec_lobby = @s mck_lobby if score @s mck_permission matches 2.. run item modify entity @s inventory.15 mck:lobby_setting5
execute if score @s mck_spec_lobby = @s mck_lobby if score @s mck_permission matches 2.. run item replace entity @s inventory.16 with gold_nugget{CustomModelData:116,menu:1b,killme:1b} 1
execute if score @s mck_spec_lobby = @s mck_lobby if score @s mck_permission matches 2.. run item modify entity @s inventory.16 mck:lobby_setting1
execute if score @s mck_spec_lobby = @s mck_lobby if score @s mck_permission matches 2.. run item replace entity @s inventory.17 with gold_nugget{CustomModelData:122,menu:1b,killme:1b} 1
execute if score @s mck_spec_lobby = @s mck_lobby if score @s mck_permission matches 2.. run item modify entity @s inventory.17 mck:lobby_setting2

execute if score @s mck_spec_lobby = @s mck_lobby if score @s mck_permission matches 1.. run item replace entity @s inventory.25 with gold_nugget{CustomModelData:119,menu:1b,killme:1b} 1
execute if score @s mck_spec_lobby = @s mck_lobby if score @s mck_permission matches 1.. run item modify entity @s inventory.25 mck:lobby_setting3
execute if score @s mck_spec_lobby = @s mck_lobby if score @s mck_permission matches 1.. run item replace entity @s inventory.24 with gold_nugget{CustomModelData:120,menu:1b,killme:1b} 1
execute if score @s mck_spec_lobby = @s mck_lobby if score @s mck_permission matches 1.. run item modify entity @s inventory.24 mck:lobby_setting4

item replace block 0 0 0 container.0 with gold_nugget{display:{Name:'{"translate":"menu.page.lobby.leave","color":"#FF6040","bold":true,"italic":false}'},CustomModelData:115,menu:1b,killme:1b} 1
data modify block 0 0 0 Items[0].tag.id_list set from storage temp id_list
item replace entity @s inventory.26 from block 0 0 0 container.0

item replace entity @s inventory.4 with gold_nugget{display:{Name:'{"text":" "}'},CustomModelData:10001,killme:1b} 1

item replace entity @s inventory.0 with gold_nugget{display:{Name:'{"translate":"menu.page.lobby.lobby_view","color":"#D4E0CE","bold":true,"italic":false}'},CustomModelData:111,killme:1b} 1