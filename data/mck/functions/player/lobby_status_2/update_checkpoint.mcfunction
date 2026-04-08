item replace block 0 0 0 container.0 with paper
item replace block 0 0 0 container.0 from entity @s enderchest.3

scoreboard players add @s mck_checkpoint 1

data modify block 0 0 0 Items[0].tag.last_pos set from block 0 0 0 Items[0].tag.checkpoints[0][2]
data modify block 0 0 0 Items[0].tag.last_rot set from block 0 0 0 Items[0].tag.checkpoints[0][3][0]
data modify block 0 0 0 Items[0].tag.checkpoints append from block 0 0 0 Items[0].tag.checkpoints[0]
data remove block 0 0 0 Items[0].tag.checkpoints[0]

data modify block 0 0 0 Items[0].tag.modes append from block 0 0 0 Items[0].tag.modes[0]
data remove block 0 0 0 Items[0].tag.modes[0]

execute store result score temp mck_temp run data get block 0 0 0 Items[0].tag.p_checkpoint_times[0]
data remove block 0 0 0 Items[0].tag.p_checkpoint_times[0]

scoreboard players operation @s mck_time_diff = temp mck_temp
scoreboard players operation @s mck_time_diff -= @s mck_timer
execute if score temp mck_temp matches 0 run scoreboard players operation @s mck_time_diff *= #-1 mck_time

execute store result storage temp time int 1 run scoreboard players get @s mck_timer
data modify block 0 0 0 Items[0].tag.checkpoint_times append from storage temp time

item replace entity @s enderchest.3 with air
item replace entity @s enderchest.3 from block 0 0 0 container.0

scoreboard players operation old mck_temp = @s mck_drive_mode
execute store result score @s mck_drive_mode run data get entity @s EnderItems[3].tag.modes[0]
execute unless score old mck_temp = @s mck_drive_mode run playsound minecraft:item.lodestone_compass.lock master @s[scores={mck_setting1=1}] ~ ~ ~ 0.6 0.8 0.6
execute unless score old mck_temp = @s mck_drive_mode run stopsound @s player
execute unless score old mck_temp = @s mck_drive_mode run function mck:player/audio_engine/play

scoreboard players set placing mck_place 0
scoreboard players operation temp mck_temp = @s mck_lobby
scoreboard players operation temp2 mck_temp = @s mck_checkpoint
scoreboard players operation temp3 mck_temp = @s mck_place


execute as @e[scores={mck_lobby_status=2}] if score @s mck_lobby = temp mck_temp if score @s mck_checkpoint < temp2 mck_temp if score @s mck_place <= temp3 mck_temp if score @s mck_place matches ..11 if score @s mck_place < @s mck_players run scoreboard players add @s mck_place 1


execute as @e[scores={mck_lobby_status=2}] if score @s mck_lobby = temp mck_temp if score @s mck_checkpoint >= temp2 mck_temp run scoreboard players add placing mck_place 1
scoreboard players operation @s mck_place = placing mck_place
scoreboard players operation @s mck_place += @s mck_place_pre
execute if score @s mck_place > @s mck_players run scoreboard players operation @s mck_place = @s mck_players

execute store result score temp mck_temp run data get block 0 0 0 Items[0].tag.maxcheckpoints
execute if score @s mck_checkpoint < temp mck_temp if score @s mck_lobby_type matches 1 run playsound minecraft:block.wooden_door.open master @s[scores={mck_setting1=1}] ~ ~ ~ 1 2
execute if score @s mck_checkpoint >= temp mck_temp run function mck:player/lobby_status_2/finish



data modify storage temp enderchest set from entity @s EnderItems
execute store result score @s mck_race_ax run data get storage temp enderchest[3].tag.checkpoints[0][0][0]
execute store result score @s mck_race_ay run data get storage temp enderchest[3].tag.checkpoints[0][0][1]
execute store result score @s mck_race_az run data get storage temp enderchest[3].tag.checkpoints[0][0][2]
scoreboard players remove @s mck_race_ay 7
execute store result score @s mck_race_bx run data get storage temp enderchest[3].tag.checkpoints[0][1][0]
execute store result score @s mck_race_by run data get storage temp enderchest[3].tag.checkpoints[0][1][1]
execute store result score @s mck_race_bz run data get storage temp enderchest[3].tag.checkpoints[0][1][2]
scoreboard players add @s mck_race_by 7



execute unless score @s mck_blue_id matches 1.. unless score @s mck_red_id matches 1.. if score @s mck_drive_mode matches 0 run function mck:player/cosmetic_hat/set