scoreboard players add @s mck_checkpoint 1

data modify entity @s HandItems[0].tag.checkpoints append from entity @s HandItems[0].tag.checkpoints[0]
data remove entity @s HandItems[0].tag.checkpoints[0]

data modify entity @s HandItems[0].tag.modes append from entity @s HandItems[0].tag.modes[0]
data remove entity @s HandItems[0].tag.modes[0]

execute store result score @s mck_drive_mode run data get entity @s HandItems[0].tag.modes[0]

scoreboard players set placing mck_place 0
scoreboard players operation temp mck_temp = @s mck_lobby
scoreboard players operation temp2 mck_temp = @s mck_checkpoint
scoreboard players operation temp3 mck_temp = @s mck_place


execute as @e[scores={mck_lobby_status=2}] if score @s mck_lobby = temp mck_temp if score @s mck_checkpoint < temp2 mck_temp if score @s mck_place <= temp3 mck_temp run scoreboard players add @s mck_place 1


execute as @e[scores={mck_lobby_status=2}] if score @s mck_lobby = temp mck_temp if score @s mck_checkpoint >= temp2 mck_temp run scoreboard players add placing mck_place 1
scoreboard players operation @s mck_place = placing mck_place
scoreboard players operation @s mck_place += @s mck_place_pre

execute store result score temp mck_temp run data get entity @s HandItems[0].tag.maxcheckpoints
execute if score @s mck_checkpoint >= temp mck_temp run function mck:bots/checkpoints/finish