execute on passengers if entity @s[tag=puppet] run item replace entity @s weapon.mainhand with air

scoreboard players set @s mck_item1 0
scoreboard players set @s mck_item_mount 0
execute on passengers if entity @s[tag=item_mount] run scoreboard players set @s mck_item_mount 0