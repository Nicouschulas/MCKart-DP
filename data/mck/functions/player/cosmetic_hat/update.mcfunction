execute if score @s mck_hat_model matches 1.. run item replace block 0 0 0 container.0 with oak_boat{display:{Name:'{"text":" "}'},killme:1b}
execute if score @s mck_hat_model matches 1.. store result block 0 0 0 Items[0].tag.CustomModelData int 1 run scoreboard players get @s mck_hat_model
execute if score @s mck_hat_model matches 1.. run item replace entity @s enderchest.26 from block 0 0 0 container.0

execute unless score @s mck_hat_model matches 1.. run item replace entity @s enderchest.26 with air