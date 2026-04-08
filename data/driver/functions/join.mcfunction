function mck:kart/summon
#function mck:player/hide_menu
scoreboard players set @s mck_status 1
scoreboard players set @s mck_drive_mode 0
scoreboard players operation audio_pack mck_audio_pack = @s mck_audio_pack
execute unless score @s mck_lobby_status matches 1 unless score @s mck_scene matches 8 unless score @s mck_scene_anim matches 2.. run function mck:player/audio_engine/play

execute if score @s mck_lobby_status matches 0 run scoreboard players set @s mck_tumble 0