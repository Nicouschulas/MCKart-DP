function mck:player/set_scores
item replace block 0 0 0 container.0 with paper
execute store result block 0 0 0 Items[0].components.playerdata.id long 1 run scoreboard players get @s mck_id
tag @s add sign
setblock 0 3 0 air
setblock 0 3 0 oak_sign{front_text:{messages:['{"selector":"@p[tag=sign]","color":"gold","bold":true,"italic":false}','{"text":""}','{"text":""}','{"text":""}']}} replace
tag @s remove sign

tag @s remove phone_bar
effect clear @s invisibility
effect clear @s speed

data modify block 0 0 0 Items[0].components.playerdata.name set from block 0 3 0 front_text.messages[0]
item replace entity @s enderchest.0 from block 0 0 0 container.0
function mck:menu/unselect_track


item replace entity @s enderchest.2 with paper
item replace entity @s enderchest.3 with paper

scoreboard players set @s mck_page 0
scoreboard players set @s mck_status 0
scoreboard players reset @s mck_spectate
scoreboard players set @s mck_drive_mode 0
scoreboard players set @s mck_manager_call 0
scoreboard players set @s mck_lobby_status 0
execute if score @s mck_lobby matches 1.. unless score @s mck_leave matches 1.. run tellraw @s [{"text":"[","color":"gray","bold":true},{"translate":"system","color":"gold","bold":false},{"text":"] "},{"translate":"chat.alert.leave_lobby","color":"red","bold":false}]
scoreboard players set @s mck_lobby 0
scoreboard players set @s mck_sethead 40
scoreboard players set @s mck_sel_track 0
scoreboard players reset @s mck_track
scoreboard players reset @s mck_item1
scoreboard players reset @s mck_item2
scoreboard players reset @s mck_coins
scoreboard players reset @s mck_lootbox
scoreboard players reset @s pcd.id
execute unless score @s mck_scene matches 1..17 run function mck:player/show_menu
execute if score @s mck_scene matches 1..17 run function mck:player/hide_menu

stopsound @s ambient
execute if score @s mck_leave matches 1.. run scoreboard players set @s mck_region 14
execute if score @s mck_death matches 1.. run scoreboard players set @s mck_region 14
function mck:player/regions/play

scoreboard players set @s mck_reset_timer 1


scoreboard players reset @s mck_leave
scoreboard players reset @s mck_death

data modify storage temp enderchest set value [{}, {}, {}, {}, {}]
data modify storage temp enderchest[4].components.track_stats set from entity @s EnderItems[4].components.track_stats
data modify storage temp enderchest[4].components.stats set from entity @s EnderItems[4].components.stats
function mck:player/stats/ranked/update_ranking_time

scoreboard players operation in mck_db_bit = @s mck_id
function mck:database/player_find
execute unless data storage databases output.data run function mck:player/stats/restore
execute if data storage databases output.data run function mck:player/stats/set_from_db
execute if data storage databases output.data run function mck:player/stats/push_to_db


effect give @s minecraft:saturation infinite 0 true

stopsound @s player
scoreboard players set @s mck_sound_engine 600


item replace block 0 0 0 container.0 with paper
execute store result block 0 0 0 Items[0].components.playerdata.id long 1 run scoreboard players get @s mck_id
tag @s add sign
setblock 0 3 0 air
setblock 0 3 0 oak_sign{front_text:{messages:['{"selector":"@p[tag=sign]","color":"gold","bold":true,"italic":false}','{"text":""}','{"text":""}','{"text":""}']}} replace
tag @s remove sign

data modify block 0 0 0 Items[0].components.playerdata.name set from block 0 3 0 front_text.messages[0]
item replace entity @s enderchest.0 from block 0 0 0 container.0


function mck:player/team/normal
bossbar set coin_multiplier players @a

# TP TO SPAWN
title @s[tag=!builder] times 0 30 20
title @s[tag=!builder] subtitle "\ue000"
title @s[tag=!builder] title "\uaab7"
execute unless score @s mck_scene matches 1..17 run tp @s[tag=!builder] -369.50 69.00 598.50 -180.75 9.29
gamemode adventure @s[tag=!builder]

execute if score @s mck_scene matches 1..6 run scoreboard players set @s mck_scene 1
execute if score @s mck_scene matches 1..6 run tp @s -369.50 69.00 598.50 -180.75 9.29
execute if score @s mck_scene matches 7..17 run scoreboard players set @s mck_scene 7
execute if score @s mck_scene matches 1..17 run function mck:player/scenes/start


execute if score @s mck_force_reset matches 1.. run function mck:player/hard_reset