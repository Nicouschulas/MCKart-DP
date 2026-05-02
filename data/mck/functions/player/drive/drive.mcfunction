# Checks if player is in kart
scoreboard players set is_on_kart mck_temp 0
execute on vehicle run scoreboard players set is_on_kart mck_temp 1
execute if score is_on_kart mck_temp matches 0 unless score @s mck_lobby_status matches 1..2 run function mck:player/drive/quit_driving
execute if score is_on_kart mck_temp matches 0 if score @s mck_lobby_status matches 1..2 run function mck:player/drive/get_player_on_kart

execute if score is_on_kart mck_temp matches 0 run scoreboard players set @s mck_speed 0
execute if score is_on_kart mck_temp matches 1 unless score @s mck_lobby_status matches 1 run function mck:player/drive/calc_speed
execute if score @s mck_lobby_status matches 1 run scoreboard players set @s mck_speed 0
execute if score @s mck_lobby_status matches 2 if score @s mck_timer matches ..30 if score @s mck_startboost matches 1 if score @s mck_speed matches ..60 run scoreboard players set @s mck_speed 60

# here im using Cloud Wolf's WASD detection. Link to the channel: https://www.youtube.com/@CloudWolfMinecraft Thank you!
execute if score deci mck_timer matches 0 run data modify storage temp Motion set from entity @s Motion
execute if score deci mck_timer matches 0 run execute if score is_on_kart mck_temp matches 1 store result score .x wasd run data get storage temp Motion[0] 1000.0
execute if score deci mck_timer matches 0 run execute if score is_on_kart mck_temp matches 1 store result score .z wasd run data get storage temp Motion[2] 1000.0
execute if score deci mck_timer matches 0 run execute if score is_on_kart mck_temp matches 1 run function mck:wasd_detection/input

execute if score is_on_kart mck_temp matches 1 run function mck:player/drive/calc_drift
execute if score is_on_kart mck_temp matches 1 run function mck:player/drive/calc_brake

execute if score @s mck_lobby_status matches 1 run scoreboard players set @s mck_drift 0
execute if score @s mck_lobby_status matches 1 run scoreboard players set @s mck_brake 0


execute if score is_on_kart mck_temp matches 1 if score @s mck_lobby_status matches 1 run function mck:player/drive/start_boost


# engine sounds
execute if score @s mck_sound_engine matches 1.. run scoreboard players remove @s mck_sound_engine 1
execute if score @s mck_sound_engine matches 0 run scoreboard players operation audio_pack mck_audio_pack = @s mck_audio_pack
execute if score @s mck_sound_engine matches 0 run function mck:player/audio_engine/play



#flugmodus
execute if score @s mck_drive_mode matches 1 run function mck:player/drive/flug_modus

# unterwassermodus
execute if score @s mck_drive_mode matches 2 run function mck:player/drive/unterwasser_modus


execute if score @s mck_lobby_status matches 2.. run function mck:player/drive/in_game_stuff



# datenübermittlung
execute if score deci mck_timer matches 0 run execute store result score @s mck_dir run data get entity @s Rotation[0] 1
execute if score @s mck_lobby_status matches 1 store result score @s mck_dir run data get entity @s EnderItems[2].tag.data.startangle


scoreboard players operation dir mck_dir = @s mck_dir
scoreboard players operation speed mck_speed = @s mck_speed
scoreboard players operation boost mck_boost = @s mck_boost
scoreboard players operation grip mck_grip = @s mck_grip
scoreboard players operation drift mck_drift = @s mck_drift
scoreboard players operation brake mck_brake = @s mck_brake
scoreboard players operation drive_mode mck_drive_mode = @s mck_drive_mode
scoreboard players operation tumble mck_tumble = @s mck_tumble
scoreboard players operation lobby_status mck_temp = @s mck_lobby_status
scoreboard players operation trail mck_temp = @s mck_trail
scoreboard players operation challenge_level mck_challenge_level = @s mck_challenge_level
scoreboard players operation track mck_track = @s mck_track
execute unless score @s mck_lobby_status matches 1.. run scoreboard players set track mck_track 0

execute unless score @s mck_lobby_status matches 1.. unless score @s mck_scene matches 1..17 run function mck:player/actionbar


execute on vehicle if entity @s[type=fox,tag=kart] run function mck:kart/kart_drive