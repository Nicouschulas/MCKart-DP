execute if entity @s[tag=bot] run tag @s add pipe_user
execute if entity @s[tag=bot] run scoreboard players set is_bot mck_temp 1
execute if entity @s[tag=!bot] on vehicle run tag @s add pipe_user
execute if entity @s[tag=!bot] run scoreboard players set is_bot mck_temp 0

scoreboard players operation temp mck_temp = @s mck_race
scoreboard players set error mck_temp 1
execute as @e[scores={mck_place=1,mck_lobby_status=2}] if score @s mck_race = temp mck_temp at @s run function mck:item_function/pipe/target

execute if score error mck_temp matches 0 run scoreboard players operation @s mck_checkpoint = checkpoint mck_temp
execute if score error mck_temp matches 0 run execute if entity @s[tag=bot] run data modify entity @s HandItems[0].tag.checkpoints set from storage temp checkpoints
execute if score error mck_temp matches 0 run execute if entity @s[tag=bot] run data modify entity @s HandItems[0].tag.modes set from storage temp modes
execute if score error mck_temp matches 0 run execute if entity @s[tag=!bot] run function mck:item_function/pipe/player_checkpoint
execute if score error mck_temp matches 0 store result score @s mck_drive_mode run data get storage temp modes[0]


execute if entity @s[tag=bot] at @s run summon item_display ~ ~3 ~ {Rotation:[0F,-90F],Tags:["pipe"],transformation:{left_rotation:[-1f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[4f,4f,4f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1015}}}


execute if entity @s[tag=bot] run tag @s remove pipe_user
execute if entity @s[tag=!bot] on vehicle run tag @s remove pipe_user