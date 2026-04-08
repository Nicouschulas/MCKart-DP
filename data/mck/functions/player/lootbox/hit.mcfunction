scoreboard players operation in mck_db_bit = lootbox.id mck_goods_id
data modify storage databases player_goods set from entity @s EnderItems[5].tag.player_goods
function mck:database/player_good_find
execute store result score amount mck_temp run data get storage databases output.data.amount


scoreboard players set bool mck_temp 0

execute if score amount mck_temp matches ..0 run scoreboard players set bool mck_temp 1
execute if score lootbox.anim mck_lootbox matches 1.. run scoreboard players set bool mck_temp 2
execute if score @s mck_lootbox matches 1.. run scoreboard players set bool mck_temp 2

execute if score bool mck_temp matches 1 run tellraw @s [{"text":"[","color":"gray","bold":true},{"translate":"system","color":"gold","bold":false},{"text":"] "},{"translate":"lootbox.noboxes","color":"red","bold":false}]
execute if score bool mck_temp matches 2 run tellraw @s [{"text":"[","color":"gray","bold":true},{"translate":"system","color":"gold","bold":false},{"text":"] "},{"translate":"lootbox.wait","color":"red","bold":false}]
execute if score bool mck_temp matches 1.. run playsound minecraft:block.note_block.bass master @s[scores={mck_setting1=1}] ~ ~ ~ 2 0.6


execute if score bool mck_temp matches 0 store result score lootbox.level mck_lootbox run random value 1..6
execute if score bool mck_temp matches 0 if score lootbox.level mck_lootbox matches 1..3 run scoreboard players set @s mck_lootbox 1
execute if score bool mck_temp matches 0 if score lootbox.level mck_lootbox matches 4..5 run scoreboard players set @s mck_lootbox 2
execute if score bool mck_temp matches 0 if score lootbox.level mck_lootbox matches 6 run scoreboard players set @s mck_lootbox 3
execute if score bool mck_temp matches 0 run scoreboard players operation lootbox.level mck_lootbox = @s mck_lootbox
execute if score bool mck_temp matches 0 run scoreboard players set lootbox.anim mck_lootbox 1