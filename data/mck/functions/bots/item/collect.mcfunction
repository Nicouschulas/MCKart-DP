scoreboard players reset @s mck_itembox

function mck:bots/item/create_table

execute unless score @s mck_item1 matches 0 if score @s mck_item2 matches 0 run data modify entity @s HandItems[0].components.item2 set from storage temp table
execute unless score @s mck_item1 matches 0 if score @s mck_item2 matches 0 run scoreboard players set @s mck_item2 172

execute if score @s mck_item1 matches 0 run data modify entity @s HandItems[0].components.item1 set from storage temp table
execute if score @s mck_item1 matches 0 run scoreboard players set @s mck_item1 172