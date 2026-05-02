data modify storage databases player_goods set from entity @s EnderItems[5].tag.player_goods
execute store result score in mck_db_bit run data get entity @s EnderItems[5].tag.menu_goods[0].data.id
function mck:database/player_good_find

scoreboard players set bool mck_temp 0
execute unless data storage databases output.data.amount run scoreboard players set bool mck_temp 1
execute unless score bool mck_temp matches 1.. if score level mck_coin_multiplier matches 8.. run scoreboard players set bool mck_temp 2
execute unless score bool mck_temp matches 1.. store result score amount mck_temp run data get storage databases output.data.amount
execute unless score bool mck_temp matches 1.. unless score amount mck_temp matches 1.. run scoreboard players set bool mck_temp 3

execute if score bool mck_temp matches 1 run tellraw @s [{"text":"[","color":"gray","bold":true},{"translate":"system","color":"gold","bold":false},{"text":"] "},{"translate":"chat.alert.coin_multiplier.error1","color":"#FF837A","bold":false}]
execute if score bool mck_temp matches 2 run tellraw @s [{"text":"[","color":"gray","bold":true},{"translate":"system","color":"gold","bold":false},{"text":"] "},{"translate":"chat.alert.coin_multiplier.error2","color":"#FF837A","bold":false}]
execute if score bool mck_temp matches 3 run tellraw @s [{"text":"[","color":"gray","bold":true},{"translate":"system","color":"gold","bold":false},{"text":"] "},{"translate":"chat.alert.coin_multiplier.error3","color":"#FF837A","bold":false}]
execute if score bool mck_temp matches 1.. run playsound minecraft:block.note_block.didgeridoo master @s[scores={mck_setting1=1}] ~ ~ ~ 10 0.4

execute if score bool mck_temp matches 0 run scoreboard players operation @s mck_previous_page = @s mck_page
execute if score bool mck_temp matches 0 run scoreboard players set @s mck_page -7
execute if score bool mck_temp matches 0 run playsound minecraft:entity.villager.trade master @s[scores={mck_setting1=1}] ~ ~ ~ 1 1