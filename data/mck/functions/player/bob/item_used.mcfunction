execute store result score temp mck_temp run data get entity @s components[minecraft:custom_model_data]

execute store result score x mck_temp run data get entity @s Pos[0]
execute store result score y mck_temp run data get entity @s Pos[1]
execute store result score z mck_temp run data get entity @s Pos[2]

data remove storage bob temppos
execute store result storage bob temp double 1 run scoreboard players get x mck_temp
data modify storage bob temppos append from storage bob temp
execute store result storage bob temp double 1 run scoreboard players get y mck_temp
data modify storage bob temppos append from storage bob temp
execute store result storage bob temp double 1 run scoreboard players get z mck_temp
data modify storage bob temppos append from storage bob temp

execute if score temp mck_temp matches -7207 run data modify storage bob checkpoints append from storage bob temppos

execute if score temp mck_temp matches -7208 run data modify storage bob data.coins append from storage bob temppos

execute if score temp mck_temp matches -7209 run data modify storage bob data.items append from storage bob temppos

execute if score temp mck_temp matches -7210 run data modify storage bob data.startpos append from storage bob temppos

execute if score temp mck_temp matches -7211 run data modify storage bob data.trafficlights append from storage bob temppos

execute if score temp mck_temp matches -7212 run data modify storage bob data.cameradata set from storage bob temppos