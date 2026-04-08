scoreboard players operation time mck_time = old mck_temp
execute if score old mck_temp matches 100000000.. run scoreboard players set time mck_time 0
function mck:time/calc
data modify storage temp time1 set from storage time time

scoreboard players operation time mck_time = new mck_temp
function mck:time/calc2
data modify storage temp time2 set from storage time time


tellraw @s {"text":" "}
tellraw @s [{"text":" "},{"text":"O","color":"#FFF0BF","bold":true,"obfuscated":true},{"text":" "},{"translate":"chat.alert.record.new","color":"#D9B6B2","bold":true},{"translate":"chat.alert.record.personal_record","color":"#D4AA92","bold":false},{"nbt":"enderchest[2].tag.data.icon.tag.display.Name","storage":"temp","interpret":true},{"text":" "},{"text":"O","color":"#FFF0BF","bold":true,"obfuscated":true},{"text":" "}]
tellraw @s {"text":" "}
execute if score @s mck_lobby_type matches 0 run tellraw @s [{"text":" "},{"translate":"chat.alert.record.normal","color":"#ADADAD","bold":false},{"nbt":"time1[]","storage":"temp","interpret":true,"separator":"","color":"#D4AA92"},{"text":" ▶ ","color":"gray","bold":true},{"nbt":"time2[]","storage":"temp","interpret":true,"separator":"","color":"#D9B6B2","bold":true}]
execute if score @s mck_lobby_type matches 1 run tellraw @s [{"text":" "},{"translate":"chat.alert.record.ranked","color":"#ADADAD","bold":false},{"nbt":"time1[]","storage":"temp","interpret":true,"separator":"","color":"#D4AA92"},{"text":" ▶ ","color":"gray","bold":true},{"nbt":"time2[]","storage":"temp","interpret":true,"separator":"","color":"#D9B6B2","bold":true}]
tellraw @s {"text":" "}