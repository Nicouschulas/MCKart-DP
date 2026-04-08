scoreboard players add lobbydidfinish mck_temp 1
execute if score lobbydidfinish mck_temp matches 1 run function mck:lobby/ranked/track_stats

execute if score @s mck_status matches 2 run function mck:player/spectate/leave

execute if score lobbyautokick mck_temp matches 1 run scoreboard players set @s mck_lobby 0
execute if score @s mck_setting6 matches 0 run scoreboard players set @s mck_lobby 0
execute if score @s mck_lobby matches 0 run tellraw @s [{"text":"[","color":"gray","bold":true},{"translate":"system","color":"gold","bold":false},{"text":"] "},{"translate":"chat.alert.leave_lobby","color":"red","bold":false}]
execute if score @s mck_lobby_status matches 2 run function driver:leave


title @s[scores={mck_lobby_status=2}] times 0 50 10
title @s[scores={mck_lobby_status=2}] subtitle "\uE000"
title @s[scores={mck_lobby_status=2}] title {"translate":"lobby.end.title","color":"red","bold":true}

execute if entity @s[scores={mck_lobby_status=2}] run function mck:player/challenges/reached
execute if entity @s[scores={mck_lobby_status=2}] run scoreboard players operation x mck_temp = @s mck_last_x
execute if entity @s[scores={mck_lobby_status=2}] run scoreboard players operation y mck_temp = @s mck_last_y
execute if entity @s[scores={mck_lobby_status=2}] run scoreboard players operation z mck_temp = @s mck_last_z
execute if entity @s[scores={mck_lobby_status=2}] at @s run function mck:player/score_tp
execute if entity @s[scores={mck_lobby_status=2}] at @s run playsound minecraft:entity.villager.no master @s[scores={mck_setting1=1}] ~ ~ ~ 1 0.8
execute if entity @s[scores={mck_lobby_status=2}] run stopsound @s ambient
execute if entity @s[scores={mck_lobby_status=2}] run scoreboard players set @s mck_region_timer 50

function mck:player/team/normal
function mck:player/show_menu
scoreboard players set @s mck_lobby_status 0
scoreboard players set @s mck_page 0
execute if score @s mck_lobby matches 1.. run scoreboard players set @s mck_page -1
scoreboard players reset @s mck_item1
scoreboard players reset @s mck_item2
scoreboard players reset @s mck_coins
function mck:menu/draw


scoreboard players set temp mck_temp 0
execute as @a[scores={mck_lobby=1..}] if score @s mck_lobby = lobbyid mck_temp if score @s mck_lobby_status matches 2..3 run scoreboard players set temp mck_temp 1
execute if score temp mck_temp matches 0 run scoreboard players set lobbygametime mck_temp 0