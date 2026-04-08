execute if score @s mck_lobby_type matches 0 run function mck:player/item/create_table
execute if score @s mck_lobby_type matches 1 run data remove storage temp table
execute if score @s mck_lobby_type matches 1 run data modify storage temp table append value 1

execute unless score @s mck_item1 matches 0 if score @s mck_item2 matches 0 run item replace block 0 0 0 container.0 from entity @s enderchest.3
execute unless score @s mck_item1 matches 0 if score @s mck_item2 matches 0 run data modify block 0 0 0 Items[0].tag.item2 set from storage temp table
execute unless score @s mck_item1 matches 0 if score @s mck_item2 matches 0 run item replace entity @s enderchest.3 from block 0 0 0 container.0
execute unless score @s mck_item1 matches 0 if score @s mck_item2 matches 0 run playsound custom:itemrolling master @s[scores={mck_setting1=1}] ~ ~ ~ 0.5 1
execute unless score @s mck_item1 matches 0 if score @s mck_item2 matches 0 run scoreboard players add @s mck_item_uses 1
execute unless score @s mck_item1 matches 0 if score @s mck_item2 matches 0 run scoreboard players set @s mck_item2 172

execute if score @s mck_lobby_type matches 0 run function mck:player/item/create_table
execute if score @s mck_lobby_type matches 1 run data remove storage temp table
execute if score @s mck_lobby_type matches 1 run data modify storage temp table append value 1

execute if score @s mck_itembox matches 2 if score @s mck_item2 matches 0 run item replace block 0 0 0 container.0 from entity @s enderchest.3
execute if score @s mck_itembox matches 2 if score @s mck_item2 matches 0 run data modify block 0 0 0 Items[0].tag.item2 set from storage temp table
execute if score @s mck_itembox matches 2 if score @s mck_item2 matches 0 run item replace entity @s enderchest.3 from block 0 0 0 container.0
execute if score @s mck_itembox matches 2 if score @s mck_item2 matches 0 run playsound custom:itemrolling master @s[scores={mck_setting1=1}] ~ ~ ~ 0.5 1
execute if score @s mck_itembox matches 2 if score @s mck_item2 matches 0 run scoreboard players add @s mck_item_uses 1
execute if score @s mck_itembox matches 2 if score @s mck_item2 matches 0 run scoreboard players set @s mck_item2 172

execute if score @s mck_lobby_type matches 0 run function mck:player/item/create_table
execute if score @s mck_lobby_type matches 1 run data remove storage temp table
execute if score @s mck_lobby_type matches 1 run data modify storage temp table append value 1

execute if score @s mck_item1 matches 0 run item replace block 0 0 0 container.0 from entity @s enderchest.3
execute if score @s mck_item1 matches 0 run data modify block 0 0 0 Items[0].tag.item1 set from storage temp table
execute if score @s mck_item1 matches 0 run item replace entity @s enderchest.3 from block 0 0 0 container.0
execute if score @s mck_item1 matches 0 run playsound custom:itemrolling master @s[scores={mck_setting1=1}] ~ ~ ~ 1 1
execute if score @s mck_item1 matches 0 run scoreboard players add @s mck_item_uses 1
execute if score @s mck_item1 matches 0 run scoreboard players set @s mck_item1 172

scoreboard players reset @s mck_itembox