scoreboard players remove temp3 mck_temp 1
scoreboard players set bool mck_temp 0

execute store result score temp2 mck_temp run data get storage player_data data[0].id
execute if score temp2 mck_temp = temp mck_temp run scoreboard players set bool mck_temp 1
#title @p times 0 10 0
#title @p actionbar [{"text":"Score: "},{"score":{"name":"temp","objective":"mck_temp"}},{"text":" | Score2: "},{"score":{"name":"temp2","objective":"mck_temp"}}]
execute if score bool mck_temp matches 1 run data modify storage temp kart_data set from storage player_data data[0]
execute if score bool mck_temp matches 1 run data remove storage player_data data[0]

execute if score bool mck_temp matches 0 if score temp3 mck_temp matches 1.. run data modify storage player_data data append from storage player_data data[0]
execute if score bool mck_temp matches 0 if score temp3 mck_temp matches 1.. run data remove storage player_data data[0]

execute if score bool mck_temp matches 0 if score temp3 mck_temp matches 1.. run function mck:kart/get_data