execute store result score price mck_temp run data get storage databases output.data.price
execute store result score sale mck_temp run data get storage databases output.data.sale
execute store result score amount mck_temp run data get storage databases output.data.amount
execute store result score currency mck_temp run data get storage databases output.data.currency
execute store result score rebuy mck_temp run data get storage databases output.data.rebuy

execute store result score group mck_temp run data get storage databases output.data.group
data modify storage temp temp_good set from storage databases output


scoreboard players operation price mck_temp -= sale mck_temp

scoreboard players set bool mck_temp 0


# Out of stock
execute if score amount mck_temp matches 0 run scoreboard players set bool mck_temp 1

# Not enough coins/kart fragments
execute if score bool mck_temp matches 0 if score currency mck_temp matches 0 if score @s mck_bank < price mck_temp run scoreboard players set bool mck_temp 2
execute if score bool mck_temp matches 0 if score currency mck_temp matches 1 if score @s mck_kart_fragments < price mck_temp run scoreboard players set bool mck_temp 2

# Already has item
execute if score bool mck_temp matches 0 if score rebuy mck_temp matches 0 run data modify storage databases player_goods set from entity @s EnderItems[5].tag.player_goods
execute if score bool mck_temp matches 0 if score rebuy mck_temp matches 0 run function mck:database/player_good_find
execute if score bool mck_temp matches 0 if score rebuy mck_temp matches 0 store result score player_amount mck_temp run data get storage databases output.data.amount
execute if score bool mck_temp matches 0 if score rebuy mck_temp matches 0 if score player_amount mck_temp matches 1.. run scoreboard players set bool mck_temp 3



execute if score bool mck_temp matches 1.. run playsound minecraft:entity.villager.no master @s[scores={mck_setting1=1}] ~ ~ ~ 1 0.8
execute if score bool mck_temp matches 1.. run title @s times 0 30 20
execute if score bool mck_temp matches 1 run title @s subtitle {"translate":"shop.no_buy.no_stock","color":"#FF4D4D","bold":true,"italic":false}
execute if score bool mck_temp matches 2 if score currency mck_temp matches 0 run title @s subtitle {"translate":"shop.no_buy.no_money_coins","color":"#FF4D4D","bold":true,"italic":false}
execute if score bool mck_temp matches 2 if score currency mck_temp matches 1 run title @s subtitle {"translate":"shop.no_buy.no_money_kart_fragments","color":"#FF4D4D","bold":true,"italic":false}
execute if score bool mck_temp matches 3 run title @s subtitle {"translate":"shop.no_buy.already","color":"#FF4D4D","bold":true,"italic":false}
execute if score bool mck_temp matches 1.. run title @s title ""






execute if score bool mck_temp matches 0 as @e[type=interaction,distance=..6,tag=this_interaction] at @s run summon firework_rocket ~ ~ ~ {LifeTime:-100,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:4,Trail:1b,Colors:[I;8245533],FadeColors:[I;14614428]}]}}}}
execute if score bool mck_temp matches 0 run playsound custom:ka_ching master @s[scores={mck_setting1=1}] ~ ~ ~ 1 1
execute if score bool mck_temp matches 0 run function mck:player/buy/ready