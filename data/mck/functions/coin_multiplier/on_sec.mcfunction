execute unless score timer mck_coin_multiplier matches 0.. run scoreboard players set timer mck_coin_multiplier 0
execute if score timer mck_coin_multiplier matches 1..19 run scoreboard players set timer mck_coin_multiplier 0
execute if score timer mck_coin_multiplier matches 20.. run scoreboard players remove timer mck_coin_multiplier 20

execute if score timer mck_coin_multiplier matches 1.. run bossbar set coin_multiplier visible true
execute unless score timer mck_coin_multiplier matches 1.. run bossbar set coin_multiplier visible false


scoreboard players operation old mck_temp = level mck_coin_multiplier
scoreboard players set level mck_coin_multiplier 0
execute if score timer mck_coin_multiplier matches 1.. run scoreboard players add level mck_coin_multiplier 1

scoreboard players operation temp mck_temp = timer mck_coin_multiplier
scoreboard players operation temp mck_temp /= coin_multiplier_length mck_admin_settings
scoreboard players operation level mck_coin_multiplier += temp mck_temp
execute unless score level mck_coin_multiplier = old mck_temp run execute store result bossbar coin_multiplier max run scoreboard players get coin_multiplier_length mck_admin_settings

execute if score level mck_coin_multiplier < old mck_temp if score level mck_coin_multiplier matches 1.. run tellraw @a [{"text":"[","color":"gray","bold":true},{"translate":"info","color":"#57DDFF","bold":false},{"text":"] "},{"translate":"chat.alert.coin_multiplier.drop","color":"#FF837A","bold":false},{"score":{"name":"level","objective":"mck_coin_multiplier"},"color":"gold","bold":true}]
execute if score level mck_coin_multiplier < old mck_temp if score level mck_coin_multiplier matches 0 run tellraw @a [{"text":"[","color":"gray","bold":true},{"translate":"info","color":"#57DDFF","bold":false},{"text":"] "},{"translate":"chat.alert.coin_multiplier.end","color":"#FF837A","bold":false}]
execute if score level mck_coin_multiplier < old mck_temp as @a at @s run playsound minecraft:entity.villager.no master @s[scores={mck_setting1=1}] ~ ~ ~ 0.6 1 0.6



scoreboard players set skip_digits mck_time 1
scoreboard players operation time mck_time = timer mck_coin_multiplier
function mck:time/calc


execute if score level mck_coin_multiplier matches 1 run data modify storage temp temp set value '{"text": "x1.5  "}'
execute if score level mck_coin_multiplier matches 2 run data modify storage temp temp set value '{"text": "x2  "}'
execute if score level mck_coin_multiplier matches 3 run data modify storage temp temp set value '{"text": "x2.5  "}'
execute if score level mck_coin_multiplier matches 4 run data modify storage temp temp set value '{"text": "x3  "}'
execute if score level mck_coin_multiplier matches 5 run data modify storage temp temp set value '{"text": "x3.5  "}'
execute if score level mck_coin_multiplier matches 6 run data modify storage temp temp set value '{"text": "x4  "}'
execute if score level mck_coin_multiplier matches 7 run data modify storage temp temp set value '{"text": "x4.5  "}'
execute if score level mck_coin_multiplier matches 8 run data modify storage temp temp set value '{"text": "x5  "}'

execute if score timer mck_coin_multiplier matches 1.. run bossbar set coin_multiplier name [{"translate":"coin_multiplier.active","color":"gold","bold":true},{"translate":"coin_multiplier.bossbar","color":"#FFF8B8","bold":true},{"translate":"coin_multiplier.level","color":"gray","bold":false},{"score":{"name":"level","objective":"mck_coin_multiplier"},"color":"#FFF8B8","bold":true},{"text":"  \uaae0","bold":false,"color": "white"},{"nbt":"temp","storage":"temp","interpret":true,"color":"#FFF8B8","bold":true},{"nbt":"time[]","storage":"time","interpret":true,"color":"gray","bold":false,"separator":""}]
scoreboard players operation temp mck_temp = timer mck_coin_multiplier
scoreboard players operation temp mck_temp %= coin_multiplier_length mck_admin_settings
execute store result bossbar coin_multiplier value run scoreboard players get temp mck_temp


schedule function mck:coin_multiplier/on_sec 1s