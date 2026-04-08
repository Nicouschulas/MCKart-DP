tp @s ~ ~ ~ ~2 ~

execute if score @s mck_trail matches 1.. run scoreboard players operation trail mck_temp = @s mck_trail
execute if score @s mck_trail matches 1.. positioned ~ ~0.1 ~ run function mck:kart/trail