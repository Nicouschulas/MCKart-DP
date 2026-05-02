data modify storage temp bot_pos set from entity @s Pos  
execute store result score px mck_temp run data get storage temp bot_pos[0]  
execute store result score py mck_temp run data get storage temp bot_pos[1]  
execute store result score pz mck_temp run data get storage temp bot_pos[2]  

execute store result score ax mck_temp run data get storage temp pos[0][0][0]  
execute store result score ay mck_temp run data get storage temp pos[0][0][1]  
execute store result score az mck_temp run data get storage temp pos[0][0][2]  
scoreboard players remove ay mck_temp 7  

execute store result score bx mck_temp run data get storage temp pos[0][1][0]  
execute store result score by mck_temp run data get storage temp pos[0][1][1]  
execute store result score bz mck_temp run data get storage temp pos[0][1][2]  
scoreboard players add by mck_temp 7  

scoreboard players set axis mck_temp 0  
execute if score px mck_temp >= ax mck_temp if score px mck_temp <= bx mck_temp run scoreboard players add axis mck_temp 1  
execute if score py mck_temp >= ay mck_temp if score py mck_temp <= by mck_temp run scoreboard players add axis mck_temp 1  
execute if score pz mck_temp >= az mck_temp if score pz mck_temp <= bz mck_temp run scoreboard players add axis mck_temp 1  

execute if score axis mck_temp matches 3 run function mck:bots/checkpoints/update_checkpoint