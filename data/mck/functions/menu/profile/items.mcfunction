scoreboard players operation in mck_db_bit = @s mck_player_menu
function mck:database/player_find

execute store result score public mck_temp run data get storage databases output.data.public

execute if score @s mck_permission matches 3.. run scoreboard players set public mck_temp 1
execute if score @s mck_player_menu = @s mck_id run scoreboard players set public mck_temp 1


item replace entity @s inventory.9 with gold_nugget{display:{Name:'{"translate":"menu.profile.back","color":"gray","bold":true,"italic":false}'},CustomModelData:112,menu:1b,killme:1b} 1
item replace entity @s inventory.18 with gold_nugget{display:{Name:'{"translate":"menu.profile.scroll_left","color":"gray","bold":true,"italic":false}'},CustomModelData:113,menu:1b,killme:1b} 1
item replace entity @s inventory.26 with gold_nugget{display:{Name:'{"translate":"menu.profile.scroll_right","color":"gray","bold":true,"italic":false}'},CustomModelData:114,menu:1b,killme:1b} 1
item replace entity @s inventory.19 with carved_pumpkin{display:{Name:'{"text":" "}'},menu:1b,killme:1b}
item replace entity @s inventory.20 with carved_pumpkin{display:{Name:'{"text":" "}'},menu:1b,killme:1b}
item replace entity @s inventory.21 with carved_pumpkin{display:{Name:'{"text":" "}'},menu:1b,killme:1b}
item replace entity @s inventory.22 with carved_pumpkin{display:{Name:'{"text":" "}'},menu:1b,killme:1b}
item replace entity @s inventory.23 with carved_pumpkin{display:{Name:'{"text":" "}'},menu:1b,killme:1b}
item replace entity @s inventory.24 with carved_pumpkin{display:{Name:'{"text":" "}'},menu:1b,killme:1b}
item replace entity @s inventory.25 with carved_pumpkin{display:{Name:'{"text":" "}'},menu:1b,killme:1b}

item replace block 0 0 0 container.0 with player_head
data modify block 0 0 0 Items[0].tag set from storage databases output.data.head.tag
item modify block 0 0 0 container.0 mck:player_name
data modify block 0 0 0 Items[0].tag.killme set value 1b

execute if score public mck_temp matches 0 run item modify block 0 0 0 container.0 mck:profile_private
execute if score public mck_temp matches 1 run function mck:menu/profile/public

item replace entity @s inventory.13 from block 0 0 0 container.0



item replace block 0 0 0 container.0 with nether_star{display:{Name:'{"translate":"menu.profile.ranked.rankstats","color":"#57DDFF","bold":true,"italic":false}'},killme:1b} 1
execute if score public mck_temp matches 0 run item modify block 0 0 0 container.0 mck:profile_private
execute if score public mck_temp matches 1 run function mck:menu/profile/ranked

item replace entity @s inventory.14 from block 0 0 0 container.0

item replace entity @s inventory.4 with gold_nugget{display:{Name:'{"text":" "}'},CustomModelData:10007,killme:1b} 1



execute if score @s mck_permission matches 3.. run item replace entity @p inventory.17 with barrier{display:{Name:'{"translate":"menu.profile.force_reset","color":"#FF9D96","bold":true,"italic":false}',Lore:['{"text":" "}','{"translate":"menu.profile.force_reset.lore1","color":"gray","bold":false,"italic":false}','{"translate":"menu.profile.force_reset.lore2","color":"gray","bold":false,"italic":false}']}} 1