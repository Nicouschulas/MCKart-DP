tellraw @a ""
tellraw @a {"translate":"chat.info","font":"font1","color":"#9DE6EB","bold":false,"italic":false}
tellraw @a ""
tellraw @a [{"text":" "},{"nbt":"broadcast","storage":"databases","color":"#EBEBEB"}]
tellraw @a ""

execute as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1.4 1

data remove storage databases broadcast