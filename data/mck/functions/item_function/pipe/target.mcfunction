execute if entity @s[tag=!bot] run tp @e[tag=pipe_user] ~ ~2 ~ ~ ~
execute if entity @s[tag=bot] on passengers if entity @s[tag=puppet] rotated as @s run tp @e[tag=pipe_user] ~ ~2 ~ ~ ~

scoreboard players operation checkpoint mck_temp = @s mck_checkpoint
execute if entity @s[tag=!bot] run data modify storage temp checkpoints set from entity @s EnderItems[3].tag.checkpoints
execute if entity @s[tag=!bot] run scoreboard players operation ax mck_temp = @s mck_race_ax
execute if entity @s[tag=!bot] run scoreboard players operation ay mck_temp = @s mck_race_ay
execute if entity @s[tag=!bot] run scoreboard players operation az mck_temp = @s mck_race_az
execute if entity @s[tag=!bot] run scoreboard players operation bx mck_temp = @s mck_race_bx
execute if entity @s[tag=!bot] run scoreboard players operation by mck_temp = @s mck_race_by
execute if entity @s[tag=!bot] run scoreboard players operation bz mck_temp = @s mck_race_bz
execute if entity @s[tag=bot] run data modify storage temp temp set from entity @s HandItems[0].tag.checkpoints
execute if entity @s[tag=bot] run data modify storage temp checkpoints set from storage temp temp
execute if entity @s[tag=bot] store result score ax mck_temp run data get storage temp temp[0][0][0]
execute if entity @s[tag=bot] store result score ay mck_temp run data get storage temp temp[0][0][1]
execute if entity @s[tag=bot] run scoreboard players remove ay mck_temp 7
execute if entity @s[tag=bot] store result score az mck_temp run data get storage temp temp[0][0][2]
execute if entity @s[tag=bot] store result score bx mck_temp run data get storage temp temp[0][1][0]
execute if entity @s[tag=bot] store result score by mck_temp run data get storage temp temp[0][1][1]
execute if entity @s[tag=bot] run scoreboard players add by mck_temp 7
execute if entity @s[tag=bot] store result score bz mck_temp run data get storage temp temp[0][1][2]
data modify storage temp last_pos set from entity @s Pos
#execute store result score temp mck_temp run data get entity @s Rotation[0]
#scoreboard players remove temp mck_temp 90
#execute store result storage temp last_rot float 1 run scoreboard players get temp mck_temp
execute if entity @s[tag=!bot] run data modify storage temp last_rot set from entity @s Rotation[0]
execute if entity @s[tag=bot] on passengers if entity @s[tag=puppet] run data modify storage temp last_rot set from entity @s Rotation[0]

execute if entity @s[tag=!bot] run data modify storage temp modes set from entity @s EnderItems[3].tag.modes
execute if entity @s[tag=bot] run data modify storage temp modes set from entity @s HandItems[0].tag.modes

scoreboard players set error mck_temp 0