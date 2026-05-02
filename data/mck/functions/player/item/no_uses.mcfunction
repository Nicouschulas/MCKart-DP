item replace entity @s hotbar.0 with air
item replace entity @s hotbar.1 with air
item replace entity @s hotbar.2 with air
item replace entity @s hotbar.3 with air
item replace entity @s hotbar.4 with air
item replace entity @s hotbar.5 with air
item replace entity @s hotbar.6 with air
item replace entity @s hotbar.7 with air
item replace entity @s hotbar.8 with air

scoreboard players set @s mck_item1 0
scoreboard players set @s mck_item_mount 0
execute on vehicle on passengers if entity @s[nbt={Item:{tag:{}}}] run scoreboard players set @s mck_item_mount 0