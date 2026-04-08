execute if score temp mck_temp matches 1.. run data modify storage lobby temp set value {players:[], joinlocked:0b, locked:0b, autokick:1b, track:{}, starttime:0L, status:0b, id:0b}
execute if score temp mck_temp matches 1.. run scoreboard players add lobby_id mck_id 1
execute if score temp mck_temp matches 1.. store result storage lobby temp.id byte 1 run scoreboard players get lobby_id mck_id
execute if score temp mck_temp matches 1.. run data modify storage lobby ranked append from storage lobby temp
execute if score temp mck_temp matches 1.. run scoreboard players remove temp mck_temp 1
execute if score temp mck_temp matches 1.. run function mck:resources/lobby_ranked