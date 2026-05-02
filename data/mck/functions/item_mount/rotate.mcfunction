data modify entity @s item.id set value "minecraft:carrot_on_a_stick"

execute unless score @s mck_item_mount matches 14 on vehicle if entity @s[tag=!bot] on passengers if entity @s[type=player,scores={mck_status=1}] run scoreboard players operation count mck_temp = @s mck_item1_count
execute unless score @s mck_item_mount matches 14 on vehicle if entity @s[tag=bot] run scoreboard players operation count mck_temp = @s mck_item1_count

execute if score @s mck_item_mount matches 14 run scoreboard players set count mck_temp 1
scoreboard players operation count mck_temp *= #100000 wasd.constant

scoreboard players operation count mck_temp += @s mck_item_mount

execute store result entity @s item.components.custom_model_data int 1 run scoreboard players get count mck_temp

execute unless score @s mck_item_mount matches 14 run tp @s ~ ~ ~ ~5 0

execute if score @s mck_item_mount matches 14 on vehicle if entity @s[tag=!bot] on passengers if entity @s[type=player,scores={mck_status=1}] rotated as @s on vehicle on passengers if entity @s[tag=item_mount] run tp @s ~ ~ ~ ~ 0
execute if score @s mck_item_mount matches 14 on vehicle if entity @s[tag=bot] on passengers if entity @s[tag=!item_mount] rotated as @s on vehicle on passengers if entity @s[tag=item_mount] run tp @s ~ ~ ~ ~ 0

execute if score @s mck_item_mount matches 14 if score @s mck_timer matches 1.. run scoreboard players remove @s mck_timer 1
execute if score @s mck_item_mount matches 14 if score @s mck_timer matches 1.. run function mck:item_mount/leaf