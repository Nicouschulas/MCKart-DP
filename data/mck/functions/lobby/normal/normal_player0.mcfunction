scoreboard players operation temp mck_temp = lobbystarttime mck_temp
scoreboard players operation temp mck_temp %= #12 mck_time
scoreboard players operation temp2 mck_temp = @s mck_super_vote
scoreboard players add temp2 mck_temp 1
execute if score temp mck_temp matches 0..5 run title @s actionbar [{"translate":"system.selected.track","color":"white","bold": true},{"nbt":"EnderItems[0].tag.track_selected","entity":"@s","interpret":true}]
execute if score temp mck_temp matches 0..5 if score temp2 mck_temp matches 2.. run title @s actionbar [{"score":{"name":"temp2","objective":"mck_temp"},"color":"#FFDF3D","bold":true,"italic":false},{"text":"x ","color":"#FFF091","bold": false},{"translate":"system.selected.track","color":"white","bold": true},{"nbt":"EnderItems[0].tag.track_selected","entity":"@s","interpret":true}]
execute if score temp mck_temp matches 6..11 run function mck:player/actionbar

execute if score lobbystarttime mck_temp matches ..10 unless score @s mck_buyconfirm matches 1.. run title @s times 0 30 0
execute if score lobbystarttime mck_temp matches ..10 unless score @s mck_buyconfirm matches 1.. run title @s subtitle ""
execute if score lobbystarttime mck_temp matches ..10 if score @s mck_sel_track matches 0 unless score @s mck_buyconfirm matches 1.. run title @s subtitle {"translate":"lobby.time.warn","color":"red"}
execute unless score @s mck_status matches 2 if score lobbystarttime mck_temp matches 6..10 unless score @s mck_buyconfirm matches 1.. run title @s title {"score":{"name":"lobbystarttime","objective":"mck_temp"},"color":"#FF5F59","bold":true}
execute unless score @s mck_status matches 2 if score lobbystarttime mck_temp matches 4..5 unless score @s mck_buyconfirm matches 1.. run title @s title {"score":{"name":"lobbystarttime","objective":"mck_temp"},"color":"#FFD752","bold":true}
execute unless score @s mck_status matches 2 if score lobbystarttime mck_temp matches 1..3 unless score @s mck_buyconfirm matches 1.. run title @s title {"score":{"name":"lobbystarttime","objective":"mck_temp"},"color":"#A0E33B","bold":true}

execute if score lobbylocked mck_temp matches 0 if score lobbystarttime mck_temp matches 1..5 at @s run playsound minecraft:block.note_block.hat master @s[scores={mck_setting1=1}] ~ ~ ~ 1 1.3

tag @s add inlobby

execute if score @s mck_lobby_cmd matches 1.. run function mck:lobby/normal/player_cmd

scoreboard players operation @s mck_lobby_setting1 = lobbyjoinlocked mck_temp
scoreboard players operation @s mck_lobby_setting2 = lobbylocked mck_temp
scoreboard players operation @s mck_lobby_setting3 = lobbyautokick mck_temp
scoreboard players operation @s mck_lobby_setting5 = lobbybots mck_temp