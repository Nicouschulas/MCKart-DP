execute if score .a wasd matches 0 if score .d wasd matches 0 run scoreboard players set @s mck_drift 0
execute if score .a wasd matches 1 if score .s wasd matches 0 if score @s mck_drift matches 1.. run scoreboard players set @s mck_drift 0
execute if score .d wasd matches 1 if score .s wasd matches 0 if score @s mck_drift matches ..-1 run scoreboard players set @s mck_drift 0
execute if score .a wasd matches 1 if score .s wasd matches 0 run scoreboard players remove @s mck_drift 1
execute if score .d wasd matches 1 if score .s wasd matches 0 run scoreboard players add @s mck_drift 1