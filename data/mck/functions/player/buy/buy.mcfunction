execute if score @s mck_buyconfirm matches 1.. run function mck:player/buy/confirmed

execute unless score @s mck_buyconfirm matches 1.. unless score @s mck_buyconfirm matches -1 run playsound minecraft:entity.villager.trade master @s[scores={mck_setting1=1}] ~ ~ ~ 1 1
execute unless score @s mck_buyconfirm matches 1.. unless score @s mck_buyconfirm matches -1 run scoreboard players set @s mck_buyconfirm 40

execute if score @s mck_buyconfirm matches -1 run scoreboard players reset @s mck_buyconfirm