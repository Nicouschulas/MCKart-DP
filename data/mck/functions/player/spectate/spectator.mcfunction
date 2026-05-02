execute if score bool mck_temp matches 1 run gamemode spectator
execute if score bool mck_temp matches 1 run spectate
execute if score bool mck_temp matches 1 run spectate @e[type=item_display,nbt={Item:{tag:{temp:1b}}},limit=1,sort=nearest]

execute if score bool mck_temp matches 1 run scoreboard players operation @s mck_track = spectator_track mck_track

execute if score bool mck_temp matches 1 run title @s times 0 10 0
execute if score bool mck_temp matches 1 run scoreboard players operation @s mck_place = place mck_temp
execute if score bool mck_temp matches 1 run function mck:player/lobby_status_2/place_prefix
execute if score bool mck_temp matches 1 run title @s actionbar [{"nbt":"place","storage":"temp","interpret":true,"color":"white","bold":false},{"translate":"race.coins","color":"gray","bold":false},{"score":{"name":"coins","objective":"mck_temp"},"color":"gold","bold":true},{"text":"   "},{"translate":"race.round","color":"gray","bold":false},{"score":{"name":"runde","objective":"mck_temp"},"color":"#9CBDFF","bold":true},{"text":"/","color":"#A6C4E3","bold":false},{"score":{"name":"maxrunden","objective":"mck_temp"},"color":"#8CA5BF"},{"text":"   "},{"nbt":"time1[]","storage":"temp","interpret":true,"color":"gray","bold":false,"separator":""}]
execute if score bool mck_temp matches 1 run function mck:player/lobby_status_2/placing_title
execute if score bool mck_temp matches 1 if score @s mck_sound_engine matches 1.. run scoreboard players remove @s mck_sound_engine 1
execute if score bool mck_temp matches 1 if score @s mck_sound_engine matches 0 run function mck:player/audio_engine/play
execute if score bool mck_temp matches 1 if score @s mck_sound_music matches 1.. run scoreboard players remove @s mck_sound_music 1
execute if score bool mck_temp matches 1 if score @s mck_sound_music matches 0 run function mck:player/audio_music/play with entity @s EnderItems[2].tag.data.music


execute if score bool mck_temp matches 0 run function mck:player/spectate/leave