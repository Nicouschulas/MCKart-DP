scoreboard players add @s mck_timer 1

scoreboard players operation alt_runde mck_temp = @s mck_checkpoint
scoreboard players operation alt_runde mck_temp /= @s mck_race_ch

# Check checkpoint
function mck:player/lobby_status_2/check_checkpoint


scoreboard players operation temp mck_temp = @s mck_timer
scoreboard players operation temp mck_temp %= #10 mck_time
execute if score temp mck_temp matches 0 run function mck:player/recording/record


# music
execute if score @s mck_timer matches 25 run function mck:player/audio_music/intro with entity @s EnderItems[2].tag.data.music


# Runde berechnen
scoreboard players operation runde mck_temp = @s mck_checkpoint
scoreboard players operation runde mck_temp /= @s mck_race_ch

# new round
execute unless score alt_runde mck_temp = runde mck_temp run playsound custom:quest_finish master @s[scores={mck_setting1=1}] ~ ~ ~ 1 1.4
execute unless score alt_runde mck_temp = runde mck_temp run scoreboard players remove @s mck_race_mr 1
execute unless score alt_runde mck_temp = runde mck_temp if score runde mck_temp = @s mck_race_mr if score @s mck_place >= @s mck_players if score @s mck_challenge_level matches 10 if score @s mck_quest2 matches 0.. run scoreboard players add @s mck_quest_temp 1
execute unless score alt_runde mck_temp = runde mck_temp run scoreboard players add @s mck_race_mr 1

scoreboard players add runde mck_temp 1
scoreboard players operation maxrunden mck_temp = @s mck_race_mr



# TIMER Anzeigen
scoreboard players operation time mck_time = @s mck_timer
function mck:time/calc
data modify storage temp time1 set from storage time time
execute if score @s mck_lobby_type matches 1 run scoreboard players operation time mck_time = @s mck_time_diff
execute if score @s mck_lobby_type matches 1 run function mck:time/calc2
execute if score @s mck_lobby_type matches 1 run data modify storage temp time2 set from storage time time

function mck:player/lobby_status_2/place_prefix
execute if score @s mck_lobby_type matches 1 run data modify storage temp place set value '{"text":""}'

execute if score @s mck_timer matches 20.. if score @s mck_setting3 matches 0 if score @s mck_lobby_type matches 0 run title @s subtitle [{"nbt":"time1[]","storage":"temp","interpret":true,"color":"gray","bold":false,"separator":""}]
execute if score @s mck_timer matches 20.. if score @s mck_setting3 matches 0 if score @s mck_lobby_type matches 1 if score @s mck_time_diff matches ..-1 run title @s subtitle [{"nbt":"time1[]","storage":"temp","interpret":true,"color":"gray","bold":false,"separator":""},{"text": " [","color":"#FF816E","bold":false},{"nbt":"time2[]","storage":"temp","interpret":true,"color":"#FF816E","bold":false,"separator":""},{"text": "]","color":"#FF816E","bold":false}]
execute if score @s mck_timer matches 20.. if score @s mck_setting3 matches 0 if score @s mck_lobby_type matches 1 if score @s mck_time_diff matches 0.. run title @s subtitle [{"nbt":"time1[]","storage":"temp","interpret":true,"color":"gray","bold":false,"separator":""},{"text": " [+","color":"#7DCBFF","bold":false},{"nbt":"time2[]","storage":"temp","interpret":true,"color":"#7DCBFF","bold":false,"separator":""},{"text": "]","color":"#7DCBFF","bold":false}]
execute if score @s mck_timer matches 20.. if score @s mck_setting3 matches 0 run title @s actionbar [{"nbt":"place","storage":"temp","interpret":true,"color":"white","bold":false},{"translate":"race.coins","color":"gray","bold":false},{"score":{"name":"@s","objective":"mck_coins"},"color":"gold","bold":true},{"text":"   "},{"translate":"race.round","color":"gray","bold":false},{"score":{"name":"runde","objective":"mck_temp"},"color":"#9CBDFF","bold":true},{"text":"/","color":"#A6C4E3","bold":false},{"score":{"name":"maxrunden","objective":"mck_temp"},"color":"#8CA5BF"}]

execute if score @s mck_timer matches 20.. if score @s mck_setting3 matches 1 run title @s subtitle ""
execute if score @s mck_timer matches 20.. if score @s mck_setting3 matches 1 if score @s mck_lobby_type matches 0 run title @s actionbar [{"nbt":"place","storage":"temp","interpret":true,"color":"white","bold":false},{"translate":"race.coins","color":"gray","bold":false},{"score":{"name":"@s","objective":"mck_coins"},"color":"gold","bold":true},{"text":"   "},{"translate":"race.round","color":"gray","bold":false},{"score":{"name":"runde","objective":"mck_temp"},"color":"#9CBDFF","bold":true},{"text":"/","color":"#A6C4E3","bold":false},{"score":{"name":"maxrunden","objective":"mck_temp"},"color":"#8CA5BF"},{"text":"   "},{"nbt":"time1[]","storage":"temp","interpret":true,"color":"gray","bold":false,"separator":""}]
execute if score @s mck_timer matches 20.. if score @s mck_setting3 matches 1 if score @s mck_lobby_type matches 1 if score @s mck_time_diff matches ..-1 run title @s actionbar [{"nbt":"place","storage":"temp","interpret":true,"color":"white","bold":false},{"translate":"race.coins","color":"gray","bold":false},{"score":{"name":"@s","objective":"mck_coins"},"color":"gold","bold":true},{"text":"   "},{"translate":"race.round","color":"gray","bold":false},{"score":{"name":"runde","objective":"mck_temp"},"color":"#9CBDFF","bold":true},{"text":"/","color":"#A6C4E3","bold":false},{"score":{"name":"maxrunden","objective":"mck_temp"},"color":"#8CA5BF"},{"text":"   "},{"nbt":"time1[]","storage":"temp","interpret":true,"color":"gray","bold":false,"separator":""},{"text": " [","color":"#FF816E","bold":false},{"nbt":"time2[]","storage":"temp","interpret":true,"color":"#FF816E","bold":false,"separator":""},{"text": "]","color":"#FF816E","bold":false}]
execute if score @s mck_timer matches 20.. if score @s mck_setting3 matches 1 if score @s mck_lobby_type matches 1 if score @s mck_time_diff matches 0.. run title @s actionbar [{"nbt":"place","storage":"temp","interpret":true,"color":"white","bold":false},{"translate":"race.coins","color":"gray","bold":false},{"score":{"name":"@s","objective":"mck_coins"},"color":"gold","bold":true},{"text":"   "},{"translate":"race.round","color":"gray","bold":false},{"score":{"name":"runde","objective":"mck_temp"},"color":"#9CBDFF","bold":true},{"text":"/","color":"#A6C4E3","bold":false},{"score":{"name":"maxrunden","objective":"mck_temp"},"color":"#8CA5BF"},{"text":"   "},{"nbt":"time1[]","storage":"temp","interpret":true,"color":"gray","bold":false,"separator":""},{"text": " [+","color":"#7DCBFF","bold":false},{"nbt":"time2[]","storage":"temp","interpret":true,"color":"#7DCBFF","bold":false,"separator":""},{"text": "]","color":"#7DCBFF","bold":false}]



execute if score @s mck_timer matches 20.. unless score @s mck_squid matches 1..125 run title @s times 0 10 0

execute if score @s mck_lobby_type matches 0 if score @s mck_timer matches 20.. unless score @s mck_squid matches 1..125 run function mck:player/lobby_status_2/placing_title
execute if score @s mck_lobby_type matches 1 if score @s mck_timer matches 20.. unless score @s mck_squid matches 1..125 run title @s title ""



# spectator
execute if score @s mck_spectate matches 1.. if score check_spec mck_spectate matches 1.. run function mck:player/spectate/check_players


# music
execute if score @s mck_sound_music matches 1.. run scoreboard players remove @s mck_sound_music 1
execute if score @s mck_sound_music matches 0 run function mck:player/audio_music/play with entity @s EnderItems[2].tag.data.music