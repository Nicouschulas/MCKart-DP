data modify storage temp list set from entity @s EnderItems[5].tag.player_goods

execute unless score @s mck_player_menu matches 1 run data remove storage temp list[{data:{group:1b}}]
execute unless score @s mck_player_menu matches 2 run data remove storage temp list[{data:{group:2b}}]
execute unless score @s mck_player_menu matches 3 run data remove storage temp list[{data:{group:4b}}]
execute unless score @s mck_player_menu matches 4 run data remove storage temp list[{data:{group:5b}}]
execute unless score @s mck_player_menu matches 5 run data remove storage temp list[{data:{group:6b}}]
execute unless score @s mck_player_menu matches 6 run data remove storage temp list[{data:{group:7b}}]
execute unless score @s mck_player_menu matches 7 run data remove storage temp list[{data:{group:8b}}]

data remove storage temp list[{data:{group:3b}}]
data remove storage temp list[{data:{group:9b}}]
data remove storage temp list[{data:{child:1b}}]

execute if score @s mck_player_menu matches 2 run data modify storage temp list[0].data.icon.tag.CustomModelData set value 108

item replace block 0 0 0 container.0 from entity @s enderchest.5
data modify block 0 0 0 Items[0].tag.menu_goods set from storage temp list
item replace entity @s enderchest.5 from block 0 0 0 container.0