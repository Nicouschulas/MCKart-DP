item replace entity @s inventory.0 with carrot_on_a_stick[minecraft:item_name='{"translate":"menu.profile.scroll_left","color":"gray","bold":true,"italic":false}',minecraft:custom_model_data=129,menu:1b,killme:1b,button:"scroll_left"] 1
item replace entity @s inventory.1 with carrot_on_a_stick[minecraft:item_name='{"translate":"menu.profile.scroll_right","color":"gray","bold":true,"italic":false}',minecraft:custom_model_data=130,menu:1b,killme:1b,button:"scroll_right"] 1

item replace entity @s inventory.4 with paper[minecraft:item_name='{"text":"Set Metadata","color":"white","bold":true,"italic":false}',killme:1b] 1
item replace entity @s inventory.22 with nether_star[minecraft:item_name='{"text":"Add Item","color":"gold","bold":true,"italic":false}',killme:1b] 1
item replace entity @s inventory.26 with torch[minecraft:item_name='{"text":"Override current Item","color":"red","bold":true,"italic":false}',killme:1b] 1


scoreboard players operation in mck_db_bit = amazon mck_goods_id
function mck:database/good_find
item replace block 0 0 0 container.0 with paper[minecraft:item_name='{"text":"Shop ItemID","color":"gray","bold":true,"italic":false}',killme:1b] 1
execute if data storage databases output.data run data modify block 0 0 0 Items[0].id set from storage databases output.data.icon.id
execute if data storage databases output.data run data modify block 0 0 0 Items[0].tag set from storage databases output.data.icon.tag
execute if data storage databases output.data run data modify block 0 0 0 Items[0].tag.good_id set from storage databases output.data.id
item replace entity @s inventory.18 from block 0 0 0 container.0


item replace block 0 0 0 container.0 with dirt
execute if data storage databases output.data run data modify block 0 0 0 Items[0].id set from storage databases output.data.icon.id
execute if data storage databases output.data run data modify block 0 0 0 Items[0].tag set from storage databases output.data.icon.tag
data modify block 0 0 0 Items[0].tag.killme set value 1b
item replace entity @s inventory.13 from block 0 0 0 container.0