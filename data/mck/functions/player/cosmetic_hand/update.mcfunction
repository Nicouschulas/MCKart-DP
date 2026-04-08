execute if score @s mck_handheld_model matches 1.. run item replace block 0 0 0 container.0 with prismarine_shard{display:{Name:'{"text":" "}'},killme:1b}
execute if score @s mck_handheld_model matches 1.. store result block 0 0 0 Items[0].tag.CustomModelData int 1 run scoreboard players get @s mck_handheld_model
execute if score @s mck_handheld_model matches 1.. run item replace entity @s enderchest.25 from block 0 0 0 container.0

execute unless score @s mck_handheld_model matches 1.. run item replace entity @s enderchest.25 with air