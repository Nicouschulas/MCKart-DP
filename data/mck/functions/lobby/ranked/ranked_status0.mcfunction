execute if score lobbystarttime mck_temp matches 0 if score lobbyplayers mck_temp matches 1.. run scoreboard players set lobbystarttime mck_temp 61
execute if score lobbyplayers mck_temp matches 0 run scoreboard players set lobbystarttime mck_temp 0
execute if score lobbystarttime mck_temp matches 1.. if score lobbylocked mck_temp matches 0 run scoreboard players remove lobbystarttime mck_temp 1
execute if score lobbystarttime mck_temp matches 16.. if score nolobby_players mck_data matches 0 as @a[scores={mck_lobby=1..}] if score @s mck_lobby = lobbyid mck_temp run tellraw @s [{"text":"[","color":"gray","bold":true},{"translate":"system","color":"gold","bold":false},{"text":"] "},{"translate":"lobby.time.skiptime","color":"white","bold":false}]
execute if score lobbystarttime mck_temp matches 16.. if score nolobby_players mck_data matches 0 as @a[scores={mck_lobby=1..}] if score @s mck_lobby = lobbyid mck_temp at @s run playsound minecraft:item.spyglass.use master @s[scores={mck_setting1=1}] ~ ~ ~ 10 1
execute if score lobbystarttime mck_temp matches 16.. if score nolobby_players mck_data matches 0 run scoreboard players set lobbystarttime mck_temp 15
scoreboard players operation time mck_time = lobbystarttime mck_temp
scoreboard players operation time mck_time *= #20 mck_time
scoreboard players set skip_digits mck_time 1
function mck:time/calc
function mck:bossbar/r_status0
execute if score lobbystarttime mck_temp matches 0 if score lobbyplayers mck_temp matches 1.. run function mck:lobby/ranked/ranked_start