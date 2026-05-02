item replace block 0 0 0 container.0 from entity @s enderchest.3
data modify block 0 0 0 Items[0].components.item1 set from block 0 0 0 Items[0].components.item2
item replace entity @s enderchest.3 from block 0 0 0 container.0
scoreboard players operation @s mck_item1_count = @s mck_item2_count
scoreboard players operation @s mck_item1 = @s mck_item2
scoreboard players operation id mck_temp = @s mck_item1
function mck:player/item/item_mount
scoreboard players set @s mck_item2 0