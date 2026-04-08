tag @s add user

scoreboard players operation temp mck_temp = @s mck_lobby
scoreboard players operation temp2 mck_temp = @s mck_place
execute as @e[scores={mck_lobby_status=2},tag=!user] if score @s mck_lobby = temp mck_temp if score @s mck_place < temp2 mck_temp at @s run function mck:item_function/lightning/strike

tag @s remove user
playsound minecraft:entity.creeper.primed master @s[scores={mck_setting1=1}] ~ ~ ~ 100 1.4