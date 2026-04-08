data modify storage ranklist templist set value [[],[],[],[],[],[],[],[],[]]
data modify storage ranklist sortlist set value []
data modify storage ranklist list set value []

scoreboard players set sorting_done mck_temp 0
scoreboard players set sorting_all mck_temp 0
scoreboard players set global_place mck_temp 0
scoreboard players set ranklist_progress mck_temp 0
scoreboard players set ranklist_progress2 mck_temp 0
bossbar set ranklist_sort name [{"translate":"ranklist.bossbar","color":"#CFCFCF"},{"score":{"name":"ranklist_progress","objective":"mck_temp"},"color":"#57DDFF","bold":true},{"text":",","color":"#57DDFF","bold":true},{"score":{"name":"ranklist_progress2","objective":"mck_temp"},"color":"#57DDFF","bold":true},{"text":"%","color":"#57DDFF","bold":true}]
bossbar set ranklist_sort value 1
bossbar set ranklist_sort max 1
bossbar set ranklist_sort players @a

tellraw @a [{"text":"[","color":"gray","bold":true},{"translate":"info","color":"#57DDFF","bold":false},{"text":"] "},{"translate":"chat.alert.ranklist.start","color":"#CFCFCF","bold":false}]


data modify storage ranklist players set from storage databases players

#scoreboard players set testamount mck_temp 10000
#function mck:ranklist/demo