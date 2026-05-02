item replace block 0 0 0 container.0 with paper 1

execute if score @s mck_status matches 2 run function mck:player/spectate/leave

data modify block 0 0 0 Items[0].components.checkpoints set from entity @s EnderItems[2].tag.data.checkpoints
data modify block 0 0 0 Items[0].components.modes set from entity @s EnderItems[2].tag.data.modes
execute store result block 0 0 0 Items[0].components.maxcheckpoints int 1 run scoreboard players get checkpoints mck_temp
execute store result block 0 0 0 Items[0].components.rounds int 1 run data get entity @s EnderItems[2].tag.data.loops
execute store result block 0 0 0 Items[0].components.safetime int 1 run data get entity @s EnderItems[2].tag.data.safetime
data modify block 0 0 0 Items[0].components.checkpoint_times set value []
data modify block 0 0 0 Items[0].components.last_pos set from storage temp startpos[0]
data modify block 0 0 0 Items[0].components.last_rot set from entity @s EnderItems[2].tag.data.startangle

data modify block 0 0 0 Items[0].components.best_name set from storage temp best_name
data modify block 0 0 0 Items[0].components.best_time set from storage temp best_time

item replace entity @s enderchest.3 from block 0 0 0 container.0



function mck:player/stats/track_stats/find
item replace block 0 0 0 container.0 from entity @s enderchest.3
data modify block 0 0 0 Items[0].components.p_checkpoint_times set from entity @s EnderItems[2].tag.track_stats.checkpoint_times
item replace entity @s enderchest.3 from block 0 0 0 container.0



scoreboard players set @s mck_checkpoint 0
scoreboard players set @s mck_coins 0
scoreboard players set @s mck_item1 0
scoreboard players set @s mck_item2 0
scoreboard players set @s mck_place 1
scoreboard players set @s mck_place_pre 0
scoreboard players set @s mck_item_uses 0
scoreboard players set @s mck_time_diff 0
scoreboard players reset @s mck_star
scoreboard players reset @s mck_tumble
scoreboard players reset @s mck_squid
scoreboard players reset @s mck_spectate
scoreboard players set @s mck_speed 0
scoreboard players set @s mck_drive_mode 0
scoreboard players set @s mck_boost 0
scoreboard players set @s mck_tumble 0
tag @s remove did_finish
scoreboard players set @s mck_page -6
scoreboard players set @s mck_menudelay 5
scoreboard players set @s mck_shrooms_used 0

function mck:player/recording/add
function mck:player/team/ingame

execute store result score @s mck_last_x run data get entity @s Pos[0]
execute store result score @s mck_last_y run data get entity @s Pos[1]
execute store result score @s mck_last_z run data get entity @s Pos[2]


data modify storage temp enderchest set from entity @s EnderItems

execute store result score @s mck_race_ax run data get storage temp enderchest[3].tag.checkpoints[0][0][0]
execute store result score @s mck_race_ay run data get storage temp enderchest[3].tag.checkpoints[0][0][1]
execute store result score @s mck_race_az run data get storage temp enderchest[3].tag.checkpoints[0][0][2]
scoreboard players remove @s mck_race_ay 7
execute store result score @s mck_race_bx run data get storage temp enderchest[3].tag.checkpoints[0][1][0]
execute store result score @s mck_race_by run data get storage temp enderchest[3].tag.checkpoints[0][1][1]
execute store result score @s mck_race_bz run data get storage temp enderchest[3].tag.checkpoints[0][1][2]
scoreboard players add @s mck_race_by 7


execute store result score @s mck_race_mr run data get storage temp enderchest[2].tag.data.loops
execute store result score @s mck_race_ch run data get storage temp enderchest[3].tag.checkpoints


# challenge
execute if score @s mck_challenge_level matches 5 if score @s mck_quest2 matches 0.. run scoreboard players set @s mck_quest_temp 0
execute if score @s mck_challenge_level matches 8 if score @s mck_quest2 matches 0.. run scoreboard players set @s mck_quest_temp 0
execute if score @s mck_challenge_level matches 9 if score @s mck_quest2 matches 0.. run scoreboard players set @s mck_quest_temp 0
execute if score @s mck_challenge_level matches 10 if score @s mck_quest2 matches 0.. run scoreboard players set @s mck_quest_temp 0