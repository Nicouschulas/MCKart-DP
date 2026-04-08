scoreboard players add temp mck_temp 1

execute if score @s mck_scene matches 13 run data modify storage temp lobby[0].players set value []

execute store result score lobbyjoinlocked mck_temp run data get storage temp lobby[0].joinlocked
execute store result score lobbyplayers mck_temp run data get storage temp lobby[0].players
execute store result score lobbystatus mck_temp run data get storage temp lobby[0].status
execute store result score lobbygametime mck_temp run data get storage temp lobby[0].gametime
execute store result score lobbyid mck_temp run data get storage temp lobby[0].id

execute if score lobbystatus mck_temp matches 2 run scoreboard players operation time mck_time = lobbygametime mck_temp
execute if score lobbystatus mck_temp matches 2 run scoreboard players set skip_digits mck_time 1
execute if score lobbystatus mck_temp matches 2 run function mck:time/calc

execute if score @s mck_permission matches 2.. run scoreboard players set lobbyjoinlocked mck_temp 0

item replace block 0 0 0 container.0 with gold_nugget{display:{Name:'{"translate":"menu.page.play.rankedlobby","color":"#57DDFF","bold":true,"italic":false}'},CustomModelData:103,killme:1b} 1
execute if score @s mck_lobby = lobbyid mck_temp run item replace block 0 0 0 container.0 with gold_nugget{display:{Name:'{"translate":"menu.page.play.yourlobby","color":"#A7FF7A","bold":true,"italic":false}'},CustomModelData:110,killme:1b} 1
item modify block 0 0 0 container.0 mck:lobbybar/open

execute if score lobbyplayers mck_temp >= maxplayersranked mck_admin_settings run item modify block 0 0 0 container.0 mck:lobbybar/full
execute if score lobbyjoinlocked mck_temp matches 1 run item modify block 0 0 0 container.0 mck:lobbybar/locked

execute if score lobbystatus mck_temp matches 1 run item modify block 0 0 0 container.0 mck:lobbybar/preparing
execute if score lobbystatus mck_temp matches 2 run item modify block 0 0 0 container.0 mck:lobbybar/ingame

item modify block 0 0 0 container.0 mck:normal_lobby


execute if score maxplayersranked mck_admin_settings matches ..11 run data remove block 0 0 0 Items[0].tag.display.Lore[17]
execute if score maxplayersranked mck_admin_settings matches ..10 run data remove block 0 0 0 Items[0].tag.display.Lore[16]
execute if score maxplayersranked mck_admin_settings matches ..9 run data remove block 0 0 0 Items[0].tag.display.Lore[15]
execute if score maxplayersranked mck_admin_settings matches ..8 run data remove block 0 0 0 Items[0].tag.display.Lore[14]
execute if score maxplayersranked mck_admin_settings matches ..7 run data remove block 0 0 0 Items[0].tag.display.Lore[13]
execute if score maxplayersranked mck_admin_settings matches ..6 run data remove block 0 0 0 Items[0].tag.display.Lore[12]
execute if score maxplayersranked mck_admin_settings matches ..5 run data remove block 0 0 0 Items[0].tag.display.Lore[11]
execute if score maxplayersranked mck_admin_settings matches ..4 run data remove block 0 0 0 Items[0].tag.display.Lore[10]
execute if score maxplayersranked mck_admin_settings matches ..3 run data remove block 0 0 0 Items[0].tag.display.Lore[9]
execute if score maxplayersranked mck_admin_settings matches ..2 run data remove block 0 0 0 Items[0].tag.display.Lore[8]
execute if score maxplayersranked mck_admin_settings matches ..1 run data remove block 0 0 0 Items[0].tag.display.Lore[7]
execute if score maxplayersranked mck_admin_settings matches ..0 run data remove block 0 0 0 Items[0].tag.display.Lore[6]


execute if score temp mck_temp matches 1 run data modify block 0 0 0 Items[0].tag.lobby set value 11
execute if score temp mck_temp matches 1 run item replace entity @s inventory.18 from block 0 0 0 container.0
execute if score temp mck_temp matches 2 run data modify block 0 0 0 Items[0].tag.lobby set value 12
execute if score temp mck_temp matches 2 run item replace entity @s inventory.19 from block 0 0 0 container.0
execute if score temp mck_temp matches 3 run data modify block 0 0 0 Items[0].tag.lobby set value 13
execute if score temp mck_temp matches 3 run item replace entity @s inventory.20 from block 0 0 0 container.0
execute if score temp mck_temp matches 4 run data modify block 0 0 0 Items[0].tag.lobby set value 14
execute if score temp mck_temp matches 4 run item replace entity @s inventory.21 from block 0 0 0 container.0
execute if score temp mck_temp matches 5 run data modify block 0 0 0 Items[0].tag.lobby set value 15
execute if score temp mck_temp matches 5 run item replace entity @s inventory.22 from block 0 0 0 container.0
execute if score temp mck_temp matches 6 run data modify block 0 0 0 Items[0].tag.lobby set value 16
execute if score temp mck_temp matches 6 run item replace entity @s inventory.23 from block 0 0 0 container.0
execute if score temp mck_temp matches 7 run data modify block 0 0 0 Items[0].tag.lobby set value 17
execute if score temp mck_temp matches 7 run item replace entity @s inventory.24 from block 0 0 0 container.0
execute if score temp mck_temp matches 8 run data modify block 0 0 0 Items[0].tag.lobby set value 18
execute if score temp mck_temp matches 8 run item replace entity @s inventory.25 from block 0 0 0 container.0
execute if score temp mck_temp matches 9 run data modify block 0 0 0 Items[0].tag.lobby set value 19
execute if score temp mck_temp matches 9 run item replace entity @s inventory.26 from block 0 0 0 container.0


data remove storage temp lobby[0]
execute if data storage temp lobby[0] run function mck:menu/page_play/list_ranked