scoreboard players operation time mck_time = time mck_temp
function mck:time/calc
data modify storage temp time1 set from storage time time

scoreboard players operation time mck_time = @s mck_timer
function mck:time/calc2
data modify storage temp time2 set from storage time time

data modify storage temp previous set from storage databases output.data.n_best.name
data modify storage databases output.data.n_best.id set from entity @s EnderItems[0].tag.playerdata.id
data modify storage databases output.data.n_best.name set from entity @s EnderItems[1].tag.SkullOwner.Name
data modify storage databases output.data.n_best.recording set from storage lobby recordings[0].recording
execute store result storage databases output.data.n_best.time int 1 run scoreboard players get @s mck_timer


tellraw @a {"text":" "}
execute if score record mck_temp matches 1 run tellraw @a [{"text":" "},{"text":"O","color":"#FFF0BF","bold":true,"obfuscated":true},{"text":" "},{"translate":"chat.alert.record.first","color":"#FFDE59","bold":true},{"translate":"chat.alert.record.world_record","color":"#D6972B","bold":false},{"nbt":"output.data.name","storage":"databases","interpret":true},{"text":" "},{"text":"O","color":"#FFF0BF","bold":true,"obfuscated":true},{"text":" "}]
execute if score record mck_temp matches 2 run tellraw @a [{"text":" "},{"text":"O","color":"#FFF0BF","bold":true,"obfuscated":true},{"text":" "},{"translate":"chat.alert.record.new","color":"#FFDE59","bold":true},{"translate":"chat.alert.record.world_record","color":"#D6972B","bold":false},{"nbt":"output.data.name","storage":"databases","interpret":true},{"text":" "},{"text":"O","color":"#FFF0BF","bold":true,"obfuscated":true},{"text":" "}]
tellraw @a {"text":" "}
tellraw @a [{"text":" "},{"translate":"chat.alert.record.normal","color":"#ADADAD","bold":false},{"nbt":"time1[]","storage":"temp","interpret":true,"separator":"","color":"#D6972B"},{"text":" ▶ ","color":"gray","bold":true},{"nbt":"time2[]","storage":"temp","interpret":true,"separator":"","color":"#FFDE59","bold":true}]
tellraw @a {"text":" "}
tellraw @a {"text":" "}
execute if score record mck_temp matches 2 run tellraw @a [{"text":" "},{"translate":"chat.alert.record.previous","color":"gray","bold":true},{"nbt":"previous","storage":"temp","color":"#D6972B","bold":false}]
execute if score record mck_temp matches 2 run tellraw @a [{"text":" "},{"translate":"chat.alert.record.new_one","color":"gray","bold":true},{"nbt":"EnderItems[1].tag.SkullOwner.Name","entity":"@s","interpret":false,"color":"#FFDE59","bold":false}]
execute if score record mck_temp matches 1 run tellraw @a [{"text":" "},{"translate":"chat.alert.record.by","color":"gray","bold":true},{"nbt":"EnderItems[1].tag.SkullOwner.Name","entity":"@s","interpret":false,"color":"#FFDE59","bold":false}]
tellraw @a {"text":" "}