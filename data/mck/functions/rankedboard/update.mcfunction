data modify storage temp list set value []
execute if score @s mck_page matches 0 run data modify storage temp list set from storage ranklist list[0]
execute if score @s mck_page matches 1 run data modify storage temp list set from storage ranklist list[1]
execute if score @s mck_page matches 2 run data modify storage temp list set from storage ranklist list[2]
execute if score @s mck_page matches 3 run data modify storage temp list set from storage ranklist list[3]
execute if score @s mck_page matches 4 run data modify storage temp list set from storage ranklist list[4]
execute if score @s mck_page matches 5 run data modify storage temp list set from storage ranklist list[5]
execute if score @s mck_page matches 6 run data modify storage temp list set from storage ranklist list[6]
execute if score @s mck_page matches 7 run data modify storage temp list set from storage ranklist list[7]
execute if score @s mck_page matches 8 run data modify storage temp list set from storage ranklist list[8]
execute store result score count mck_temp run data get storage temp list

data modify storage temp text set value []

execute if score @s mck_page matches 0 run data modify storage temp text set value ['{"text":"\\uaba1 ","color":"white","bold":false}', '{"translate":"ranklist.rank1","color":"#FF4551","bold":true,"italic":false}','{"text":"\\n\\n"}']
execute if score @s mck_page matches 1 run data modify storage temp text set value ['{"text":"\\uaba2 ","color":"white","bold":false}', '{"translate":"ranklist.rank2","color":"#BB87FF","bold":true,"italic":false}','{"text":"\\n\\n"}']
execute if score @s mck_page matches 2 run data modify storage temp text set value ['{"text":"\\uaba3 ","color":"white","bold":false}', '{"translate":"ranklist.rank3","color":"#7DB5FF","bold":true,"italic":false}','{"text":"\\n\\n"}']
execute if score @s mck_page matches 3 run data modify storage temp text set value ['{"text":"\\uaba4 ","color":"white","bold":false}', '{"translate":"ranklist.rank4","color":"#49D68B","bold":true,"italic":false}','{"text":"\\n\\n"}']
execute if score @s mck_page matches 4 run data modify storage temp text set value ['{"text":"\\uaba5 ","color":"white","bold":false}', '{"translate":"ranklist.rank5","color":"#FFCC24","bold":true,"italic":false}','{"text":"\\n\\n"}']
execute if score @s mck_page matches 5 run data modify storage temp text set value ['{"text":"\\uaba6 ","color":"white","bold":false}', '{"translate":"ranklist.rank6","color":"#E8FFFF","bold":true,"italic":false}','{"text":"\\n\\n"}']
execute if score @s mck_page matches 6 run data modify storage temp text set value ['{"text":"\\uaba7 ","color":"white","bold":false}', '{"translate":"ranklist.rank7","color":"#D1A075","bold":true,"italic":false}','{"text":"\\n\\n"}']
execute if score @s mck_page matches 7 run data modify storage temp text set value ['{"text":"\\uaba8 ","color":"white","bold":false}', '{"translate":"ranklist.rank8","color":"#BFAFA8","bold":true,"italic":false}','{"text":"\\n\\n"}']
execute if score @s mck_page matches 8 run data modify storage temp text set value ['{"text":"\\uaba9 ","color":"white","bold":false}', '{"translate":"ranklist.rank9","color":"#FAFF70","bold":true,"italic":false}','{"text":"\\n\\n"}']

scoreboard players set place mck_temp 0
function mck:rankedboard/list_players

data modify storage temp text append value '{"text":"\\n"}'
data modify storage temp temp set from entity @a[limit=1,sort=nearest] EnderItems[4].tag.stats
data modify storage temp text append value '{"selector":"@a[limit=1,sort=nearest]","color":"#BCD5D6","bold":false}'
data modify storage temp text append from storage temp div
execute if score @a[limit=1,sort=nearest] mck_setting4 matches 0 run data modify storage temp text append value '{"translate":"rankedboard.private","color":"#DEA38E","bold":false}'

execute if score @a[limit=1,sort=nearest] mck_setting4 matches 1 store result score time mck_time run data get storage temp temp.rank_time
execute if score @a[limit=1,sort=nearest] mck_setting4 matches 1 if score time mck_time matches 99000000.. run scoreboard players set time mck_time 0
execute if score @a[limit=1,sort=nearest] mck_setting4 matches 1 run function mck:time/calc16
execute if score @a[limit=1,sort=nearest] mck_setting4 matches 1 run data modify storage temp time16 set from storage time time
execute if score @a[limit=1,sort=nearest] mck_setting4 matches 1 run data modify storage temp text append value '{"nbt":"time16[]","storage":"temp","interpret":true,"color":"white","bold":false,"separator":""}'

data modify storage temp text append value '{"text":"\\n\\n"}'
execute store result storage temp temp int 1 run scoreboard players get count mck_temp
data modify storage temp text append value '{"nbt":"temp","storage":"temp","color":"#DED19B","bold":true}'
data modify storage temp text append value '{"translate":"rankedboard.foo","color":"#DEDEDE","bold":false}'
data modify storage temp text append value '{"text":"\\n"}'
data modify storage temp text append from storage temp text[0]
data modify storage temp text append from storage temp text[1]

data modify entity @s text set value '{"nbt":"text[]","storage":"temp","interpret":true,"color":"white","bold":false,"separator":""}'