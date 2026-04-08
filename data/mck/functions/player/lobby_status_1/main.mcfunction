execute if score @s mck_timer matches 660 run title @s times 50 54 6
execute if score @s mck_timer matches 660 run title @s subtitle "\uE000"
execute if score @s mck_timer matches 660 run title @s title "\uaab7"

execute if score @s mck_timer matches 610 run function driver:leave
execute if score @s mck_timer matches 610 run scoreboard players operation x mck_temp = @s mck_camx
execute if score @s mck_timer matches 610 run scoreboard players operation y mck_temp = @s mck_camy
execute if score @s mck_timer matches 610 run scoreboard players operation z mck_temp = @s mck_camz
execute if score @s mck_timer matches 610 run function mck:player/score_tp
execute if score @s mck_timer matches 610 run gamemode adventure @s
execute if score @s mck_timer matches 610 run stopsound @s ambient
execute if score @s mck_timer matches 560 at @s run function mck:player/regions/update
execute if score @s mck_timer matches 560 at @s run function mck:player/regions/play

execute if score @s mck_timer matches 562 run gamemode spectator @s
execute if score @s mck_timer matches 562 positioned ~ ~-1 ~ run data modify storage pcd:database load set from block ~ ~ ~ Items[0].tag.load
execute if score @s mck_timer matches 562 run function pcd.user:start

execute if score @s mck_timer matches 560 if score @s mck_setting5 matches 1 at @s run playsound custom:race_intro master @s ~ ~ ~ 0.27 1

execute if score @s mck_timer matches 545 run title @s times 10 70 10
execute if score @s mck_timer matches 545 run title @s subtitle {"nbt":"EnderItems[2].tag.data.icon.tag.display.Name","entity":"@s","interpret":true}
execute if score @s mck_timer matches 545 run title @s title ""

execute if score @s mck_timer matches 425 run title @s times 10 70 10
execute if score @s mck_timer matches 425 if score @s mck_lobby_type matches 0 store result score time mck_time run data get entity @s EnderItems[2].tag.track_stats.n_best_time
execute if score @s mck_timer matches 425 if score @s mck_lobby_type matches 1 store result score time mck_time run data get entity @s EnderItems[2].tag.track_stats.r_best_time
execute if score @s mck_timer matches 425 run function mck:time/calc
execute if score @s mck_timer matches 425 run title @s subtitle [{"nbt":"time[]","storage":"time","interpret":true,"separator":"","color":"#A88774","bold":true}]
execute if score @s mck_timer matches 425 if data entity @s {EnderItems:[{Slot:2b,tag:{found_track:0b}}]} run title @s subtitle {"translate":"lobby.cinematic.none","color":"gray","bold":true,"italic":true}
execute if score @s mck_timer matches 425 if score time mck_time matches 100000000.. run title @s subtitle {"translate":"lobby.cinematic.none","color":"gray","bold":true,"italic":true}
execute if score @s mck_timer matches 425 run title @s title {"translate":"lobby.cinematic.personal_record","color":"#D9B6B2","bold":true}

execute if score @s mck_timer matches 305 store result score time mck_time run data get entity @s EnderItems[3].tag.best_time
execute if score @s mck_timer matches 305 run function mck:time/calc
execute if score @s mck_timer matches 305 run title @s times 10 70 10
execute if score @s mck_timer matches 305 run title @s subtitle [{"nbt":"EnderItems[3].tag.best_name","entity":"@s","interpret":false,"color":"#D6972B"},{"text":" - ","color":"gray","bold":true},{"nbt":"time[]","storage":"time","interpret":true,"separator":"","color":"#FFDE59","bold":true}]
execute if score @s mck_timer matches 305 run title @s title {"translate":"lobby.cinematic.world_record","color":"#FFDE59","bold":true}

execute if score @s mck_timer matches 199 run scoreboard players operation x mck_temp = @s mck_startx
execute if score @s mck_timer matches 199 run scoreboard players operation y mck_temp = @s mck_starty
execute if score @s mck_timer matches 199 run scoreboard players operation z mck_temp = @s mck_startz
execute if score @s mck_timer matches 199 run function mck:player/score_tp
execute if score @s mck_timer matches 199 run gamemode adventure @s
execute if score @s mck_timer matches 199 run data modify storage temp startangle set from entity @s EnderItems[2].tag.data.startangle
execute if score @s mck_timer matches 199 at @s run function driver:join
execute if score @s mck_timer matches 199 store result score @s mck_drive_mode run data get entity @s EnderItems[3].tag.modes[0]
execute if score @s mck_timer matches 199.. run scoreboard players set @s mck_sound_engine 203
execute if score @s mck_timer matches 199 run stopsound @s player



execute if score @s mck_timer matches 100 if score @s mck_lobby_type matches 0 run scoreboard players operation temp mck_temp = @s mck_lobby
execute if score @s mck_timer matches 100 if score @s mck_lobby_type matches 0 run scoreboard players operation temp2 mck_temp = @s mck_timer
execute if score @s mck_timer matches 100 if score @s mck_lobby_type matches 0 run execute as @e[tag=bot,type=fox] if score @s mck_lobby = temp mck_temp run scoreboard players operation @s mck_timer = temp2 mck_temp

execute if score @s mck_timer matches 100 run title @s times 0 30 0
execute if score @s mck_timer matches 100 run title @s subtitle {"translate":"lobby.start.countdown","color":"white","bold":false,"italic":false}
execute if score @s mck_timer matches 100 run title @s title [{"text":"-","color":"red","bold":true,"italic":false},{"text":"-","color":"dark_gray"},{"text":"-","color":"dark_gray"},{"text":"-","color":"dark_gray"},{"text":"-","color":"dark_gray"},{"text":" 5 ","color":"red"},{"text":"-","color":"dark_gray"},{"text":"-","color":"dark_gray"},{"text":"-","color":"dark_gray","bold":true,"italic":false},{"text":"-","color":"dark_gray","bold":true,"italic":false},{"text":"-","color":"red","bold":true,"italic":false}]
execute if score @s mck_timer matches 100 run playsound minecraft:block.note_block.bit master @s[scores={mck_setting1=1}] ~ ~ ~ 1 1.2
execute if score @s mck_timer matches 100 run playsound minecraft:block.note_block.bit master @s[scores={mck_setting1=1}] ~ ~ ~ 1 0.6

execute if score @s mck_timer matches 80 run title @s times 0 30 0
execute if score @s mck_timer matches 80 run title @s subtitle {"translate":"lobby.start.countdown","color":"white","bold":false,"italic":false}
execute if score @s mck_timer matches 80 run title @s title [{"text":"-","color":"red","bold":true,"italic":false},{"text":"-","color":"red"},{"text":"-","color":"dark_gray"},{"text":"-","color":"dark_gray"},{"text":"-","color":"dark_gray"},{"text":" 4 ","color":"red"},{"text":"-","color":"dark_gray"},{"text":"-","color":"dark_gray"},{"text":"-","color":"dark_gray","bold":true,"italic":false},{"text":"-","color":"red","bold":true,"italic":false},{"text":"-","color":"red","bold":true,"italic":false}]
execute if score @s mck_timer matches 80 run playsound minecraft:block.note_block.bit master @s[scores={mck_setting1=1}] ~ ~ ~ 1 1.2
execute if score @s mck_timer matches 80 run playsound minecraft:block.note_block.bit master @s[scores={mck_setting1=1}] ~ ~ ~ 1 0.6

execute if score @s mck_timer matches 60 run title @s times 0 30 0
execute if score @s mck_timer matches 60 run title @s subtitle {"translate":"lobby.start.countdown","color":"white","bold":false,"italic":false}
execute if score @s mck_timer matches 60 run title @s title [{"text":"-","color":"red","bold":true,"italic":false},{"text":"-","color":"red"},{"text":"-","color":"gold"},{"text":"-","color":"dark_gray"},{"text":"-","color":"dark_gray"},{"text":" 3 ","color":"gold"},{"text":"-","color":"dark_gray"},{"text":"-","color":"dark_gray"},{"text":"-","color":"gold","bold":true,"italic":false},{"text":"-","color":"red","bold":true,"italic":false},{"text":"-","color":"red","bold":true,"italic":false}]
execute if score @s mck_timer matches 60 run playsound minecraft:block.note_block.bit master @s[scores={mck_setting1=1}] ~ ~ ~ 1 1.2
execute if score @s mck_timer matches 60 run playsound minecraft:block.note_block.bit master @s[scores={mck_setting1=1}] ~ ~ ~ 1 0.6

execute if score @s mck_timer matches 40 run title @s times 0 30 0
execute if score @s mck_timer matches 40 run title @s subtitle {"translate":"lobby.start.countdown","color":"white","bold":false,"italic":false}
execute if score @s mck_timer matches 40 run title @s title [{"text":"-","color":"red","bold":true,"italic":false},{"text":"-","color":"red"},{"text":"-","color":"gold"},{"text":"-","color":"gold"},{"text":"-","color":"dark_gray"},{"text":" 2 ","color":"gold"},{"text":"-","color":"dark_gray"},{"text":"-","color":"gold"},{"text":"-","color":"gold","bold":true,"italic":false},{"text":"-","color":"red","bold":true,"italic":false},{"text":"-","color":"red","bold":true,"italic":false}]
execute if score @s mck_timer matches 40 run playsound minecraft:block.note_block.bit master @s[scores={mck_setting1=1}] ~ ~ ~ 1 1.2
execute if score @s mck_timer matches 40 run playsound minecraft:block.note_block.bit master @s[scores={mck_setting1=1}] ~ ~ ~ 1 0.6

execute if score @s mck_timer matches 20 run title @s times 0 30 0
execute if score @s mck_timer matches 20 run title @s subtitle {"translate":"lobby.start.countdown","color":"white","bold":false,"italic":false}
execute if score @s mck_timer matches 20 run title @s title [{"text":"-","color":"red","bold":true,"italic":false},{"text":"-","color":"red"},{"text":"-","color":"gold"},{"text":"-","color":"gold"},{"text":"-","color":"dark_green"},{"text":" 1 ","color":"dark_green"},{"text":"-","color":"dark_green"},{"text":"-","color":"gold"},{"text":"-","color":"gold","bold":true,"italic":false},{"text":"-","color":"red","bold":true,"italic":false},{"text":"-","color":"red","bold":true,"italic":false}]
execute if score @s mck_timer matches 20 run playsound minecraft:block.note_block.bit master @s[scores={mck_setting1=1}] ~ ~ ~ 1 1.2
execute if score @s mck_timer matches 20 run playsound minecraft:block.note_block.bit master @s[scores={mck_setting1=1}] ~ ~ ~ 1 0.6

execute if score @s mck_timer matches 1 run title @s times 0 30 0
execute if score @s mck_timer matches 1 run title @s subtitle ""
execute if score @s mck_timer matches 1 run title @s title [{"text":"-","color":"red","bold":true,"italic":false},{"text":"-","color":"red"},{"text":"-","color":"gold"},{"text":"-","color":"gold"},{"text":"- ","color":"dark_green"},{"translate":"lobby.go","color":"white"},{"text":" -","color":"dark_green"},{"text":"-","color":"gold"},{"text":"-","color":"gold","bold":true,"italic":false},{"text":"-","color":"red","bold":true,"italic":false},{"text":"-","color":"red","bold":true,"italic":false}]
execute if score @s mck_timer matches 1 run playsound minecraft:block.note_block.bit master @s[scores={mck_setting1=1}] ~ ~ ~ 1 1.8
execute if score @s mck_timer matches 1 run playsound minecraft:block.note_block.bit master @s[scores={mck_setting1=1}] ~ ~ ~ 1 0.9
execute if score @s mck_timer matches 1 run scoreboard players set @s mck_lobby_status 2

# startboost
execute if score @s mck_timer matches 1 if score @s mck_startboost matches -1 run particle minecraft:poof ~ ~ ~ 0.5 0.5 0.5 0.09 30
execute if score @s mck_timer matches 1 if score @s mck_startboost matches -1 run particle minecraft:lava ~ ~ ~ 0 0 0 0 10
execute if score @s mck_timer matches 1 if score @s mck_startboost matches -1 run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.02 8
execute if score @s mck_timer matches 1 if score @s mck_startboost matches -1 run playsound minecraft:entity.generic.explode master @s[scores={mck_setting1=1}] ~ ~ ~ 1 1.6
execute if score @s mck_timer matches 1 if score @s mck_startboost matches -1 run scoreboard players set @s mck_tumble 12

execute if score @s mck_timer matches 1 if score @s mck_startboost matches 1 run particle soul_fire_flame ^ ^1.7 ^ 0.9 0.9 0.9 0.1 10
execute if score @s mck_timer matches 1 if score @s mck_startboost matches 1 run playsound custom:boost master @s[scores={mck_setting1=1}] ~ ~ ~ 1 1
execute if score @s mck_timer matches 1 if score @s mck_startboost matches 1 if score @s mck_challenge_level matches 4 if score @s mck_quest2 matches 0.. run scoreboard players add @s mck_quest2 1
execute if score @s mck_timer matches 1 if score @s mck_startboost matches 1 run scoreboard players set @s mck_boost 130

execute if score @s mck_timer matches 1.. run scoreboard players set @s mck_sound_music 1000

execute if score @s mck_timer matches 1.. run scoreboard players remove @s mck_timer 1