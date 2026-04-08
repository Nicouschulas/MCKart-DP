data modify entity @s HandItems[0].tag.item1 set from entity @s HandItems[0].tag.item2
scoreboard players operation @s mck_item1_count = @s mck_item2_count
scoreboard players operation @s mck_item1 = @s mck_item2
scoreboard players operation id mck_temp = @s mck_item1
function mck:bots/item/item_mount
scoreboard players set @s mck_item2 0