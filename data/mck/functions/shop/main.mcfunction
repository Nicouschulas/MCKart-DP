execute unless score @s mck_status = @s mck_status run scoreboard players set @s mck_status 1


scoreboard players operation old_status mck_status = @s mck_status


execute store result score @s mck_status if entity @a[distance=..30]


execute unless score @s mck_status = old_status mck_status if score old_status mck_status matches 0 run function mck:shop/spawn
execute unless score @s mck_status = old_status mck_status if score old_status mck_status matches 1.. if score @s mck_status matches 0 run function mck:shop/despawn