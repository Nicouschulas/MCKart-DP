tellraw @s " "
tellraw @s [{"text":" ------------","color":"#BA734A","bold":true,"italic":false},{"text":" #  ","color":"#EB915D","obfuscated":true},{"translate":"lootbox.lootbox","color":"#FFDF61","font":"font1","bold": false},{"text":"  # ","color":"#EB915D","obfuscated":true},{"text":"------------","color":"#BA734A"}]
tellraw @s " "
tellraw @s " "


# COINS
scoreboard players set coins mck_temp 10

execute store result score temp mck_temp run random value 10..60
scoreboard players operation temp mck_temp *= @s mck_lootbox
scoreboard players operation coins mck_temp += temp mck_temp

execute store result score temp mck_temp run random value 1..7
execute unless score temp mck_temp matches 1 run scoreboard players set temp mck_temp 0
execute if score temp mck_temp matches 1 store result score temp mck_temp run random value 60..130
execute if score temp mck_temp matches 1.. run scoreboard players operation temp mck_temp *= @s mck_lootbox
execute if score temp mck_temp matches 1.. run scoreboard players operation coins mck_temp += temp mck_temp

execute store result score temp mck_temp run random value 1..100
execute if score temp mck_temp matches 1 run scoreboard players add coins mck_temp 400


# KARTFRAGMENTS
scoreboard players set kart_fragments mck_temp 1

execute store result score temp mck_temp run random value 0..2
execute if score temp mck_temp matches 2.. run scoreboard players set temp mck_temp 1
scoreboard players operation temp mck_temp *= @s mck_lootbox
scoreboard players operation kart_fragments mck_temp += temp mck_temp

execute store result score temp mck_temp run random value 1..100
execute if score temp mck_temp matches 1 run scoreboard players add kart_fragments mck_temp 20


tellraw @s {"translate":"lootbox.title1","color":"#FFDF61","bold":true,"italic":false}
tellraw @s [{"text":"           ","bold":false,"italic":false},{"score":{"name":"coins","objective":"mck_temp"},"color":"#FFE878","bold":true,"italic":false},{"text":" \uaae0","color":"white","bold":false,"italic":false}]
tellraw @s [{"text":"           ","bold":false,"italic":false},{"score":{"name":"kart_fragments","objective":"mck_temp"},"color":"#FF8C69","bold":true,"italic":false},{"text":" \uaae1","color":"white","bold":false,"italic":false}]
tellraw @s " "


scoreboard players set temp mck_temp 0

execute if score @s mck_lootbox matches 1 store result score temp mck_temp run random value 1..2
execute if score @s mck_lootbox matches 2 store result score temp mck_temp run random value 1..2
execute if score @s mck_lootbox matches 3 store result score temp mck_temp run random value 1..2

execute if score temp mck_temp matches 1 run function mck:player/lootbox/gamble


scoreboard players operation @s mck_bank += coins mck_temp
scoreboard players operation @s mck_kart_fragments += kart_fragments mck_temp


scoreboard players operation in mck_db_bit = lootbox.id mck_goods_id
data modify storage databases player_goods set from entity @s EnderItems[5].tag.player_goods
function mck:database/player_good_find
execute store result score amount mck_temp run data get storage databases output.data.amount
execute if score amount mck_temp matches 1.. run scoreboard players remove amount mck_temp 1

execute store result storage databases output.data.amount int 1 run scoreboard players get amount mck_temp
data modify storage databases input set from storage databases output
function mck:database/player_good_set

item modify entity @s enderchest.5 mck:player_goods_set


execute if score @s mck_challenge_level matches 9 if score @s mck_quest3 matches 0.. run scoreboard players add @s mck_quest3 1
function mck:player/challenges/reached

scoreboard players reset @s mck_lootbox