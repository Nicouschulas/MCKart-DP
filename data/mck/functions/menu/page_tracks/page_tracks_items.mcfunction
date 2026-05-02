item replace entity @s inventory.21 with gold_nugget[minecraft:item_name='{"translate":"menu.page.tracks.left","color":"gray","bold":true,"italic":false}',minecraft:custom_model_data=113,menu:1b,killme:1b] 1
item replace entity @s inventory.23 with gold_nugget[minecraft:item_name='{"translate":"menu.page.tracks.right","color":"gray","bold":true,"italic":false}',minecraft:custom_model_data=114,menu:1b,killme:1b] 1

scoreboard players operation temp mck_temp = @s mck_tracks_page
scoreboard players remove temp mck_temp 1
data modify storage temp cups set from storage tracks data
function mck:menu/page_tracks/get_cup


item replace block 0 0 0 container.0 with paper
data modify block 0 0 0 Items[0].id set from storage temp cups[0][0].id
data modify block 0 0 0 Items[0].tag set from storage temp cups[0][0].tag
data modify block 0 0 0 Items[0].tag.menu set value 1b
data modify block 0 0 0 Items[0].tag.killme set value 1b

item replace entity @s inventory.22 from block 0 0 0 container.0
data remove storage temp cups[0][0]


scoreboard players set temp mck_temp 0
execute store result score tracks mck_temp run data get storage temp cups[0]
scoreboard players operation temp2 mck_temp = tracks mck_temp
function mck:menu/page_tracks/get_tracks

execute if score temp2 mck_temp matches ..8 run item replace entity @s inventory.17 with carved_pumpkin{display:{Name:'{"text":" "}'},menu:1b,killme:1b}
execute if score temp2 mck_temp matches ..7 run item replace entity @s inventory.16 with carved_pumpkin{display:{Name:'{"text":" "}'},menu:1b,killme:1b}
execute if score temp2 mck_temp matches ..6 run item replace entity @s inventory.15 with carved_pumpkin{display:{Name:'{"text":" "}'},menu:1b,killme:1b}
execute if score temp2 mck_temp matches ..5 run item replace entity @s inventory.14 with carved_pumpkin{display:{Name:'{"text":" "}'},menu:1b,killme:1b}
execute if score temp2 mck_temp matches ..4 run item replace entity @s inventory.13 with carved_pumpkin{display:{Name:'{"text":" "}'},menu:1b,killme:1b}
execute if score temp2 mck_temp matches ..3 run item replace entity @s inventory.12 with carved_pumpkin{display:{Name:'{"text":" "}'},menu:1b,killme:1b}
execute if score temp2 mck_temp matches ..2 run item replace entity @s inventory.11 with carved_pumpkin{display:{Name:'{"text":" "}'},menu:1b,killme:1b}
execute if score temp2 mck_temp matches ..1 run item replace entity @s inventory.10 with carved_pumpkin{display:{Name:'{"text":" "}'},menu:1b,killme:1b}
execute if score temp2 mck_temp matches ..0 run item replace entity @s inventory.9 with carved_pumpkin{display:{Name:'{"text":" "}'},menu:1b,killme:1b}

item replace entity @s inventory.26 with gold_nugget[minecraft:item_name='{"translate":"menu.page.tracks.random","color":"#FFCEBD","bold":true,"italic":false}',minecraft:lore=['{"text":" "}','{"translate":"menu.page.tracks.random_lore1","color":"gray","bold":false,"italic":false}','{"translate":"menu.page.tracks.random_lore2","color":"gray","bold":false,"italic":false}'],minecraft:custom_model_data=132,killme:1b] 1


execute store result score temp mck_temp run data get entity @s EnderItems[5].tag.player_goods[{data:{group:3b}}].data.amount
item replace entity @s inventory.18 with gold_nugget[minecraft:item_name='{"translate":"menu.page.tracks.super_vote","color":"#FFDF3D","bold":true,"italic":false}',minecraft:lore=['{"text":" "}','{"translate":"menu.page.tracks.super_vote_lore1","color":"gray","bold":false,"italic":false}'],minecraft:custom_model_data=149,killme:1b] 1
scoreboard players operation temp2 mck_temp = @s mck_super_vote
item modify entity @s inventory.18 mck:super_votes_amount

item replace entity @s inventory.4 with gold_nugget[minecraft:item_name='{"text":" "}',minecraft:custom_model_data=10002,killme:1b] 1