scoreboard players set @s mck_previous_page 1

data modify storage temp list set value []

execute store result score in mck_db_bit run data get storage temp list1[0]
data modify storage databases player_goods set from entity @s EnderItems[5].tag.player_goods
function mck:database/player_good_find
execute if data storage databases output run data remove storage databases output.data.children
execute if data storage databases output run data modify storage temp list append from storage databases output
data remove storage temp list1[0]

execute if data storage temp list1[0] run function mck:menu/page_cosmetics/child/repeat

data remove storage temp list[{data:{group:3b}}]
data remove storage temp list[{data:{group:9b}}]

item replace block 0 0 0 container.0 from entity @s enderchest.5
data modify block 0 0 0 Items[0].tag.menu_goods set from storage temp list
item replace entity @s enderchest.5 from block 0 0 0 container.0