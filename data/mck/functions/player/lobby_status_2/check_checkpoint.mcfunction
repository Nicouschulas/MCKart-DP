data modify storage temp pos set from entity @s Pos  
execute store result score px mck_temp run data get storage temp pos[0]  
execute store result score py mck_temp run data get storage temp pos[1]  
execute store result score pz mck_temp run data get storage temp pos[2]  

scoreboard players set axis mck_temp 0  
execute if score px mck_temp >= @s[mck_race_ax] if score px mck_temp <= @s[mck_race_bx] run scoreboard players add axis mck_temp 1  
execute if score py mck_temp >= @s[mck_race_ay] if score py mck_temp <= @s[mck_race_by] run scoreboard players add axis mck_temp 1  
execute if score pz mck_temp >= @s[mck_race_az] if score pz mck_temp <= @s[mck_race_bz] run scoreboard players add axis mck_temp 1  

execute if score axis mck_temp matches 3 run function mck:player/lobby_status_2/update_checkpoint