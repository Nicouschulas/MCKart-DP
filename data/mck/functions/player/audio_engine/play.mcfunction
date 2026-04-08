execute if score audio_pack mck_audio_pack matches 0 unless score @s mck_drive_mode matches 2 run playsound custom:car.default.driving player @s[scores={mck_setting1=1}] ~ ~ ~ 0.3 1
execute if score audio_pack mck_audio_pack matches 0 if score @s mck_drive_mode matches 2 run playsound custom:car.default.drivingwater player @s[scores={mck_setting1=1}] ~ ~ ~ 0.3 1
execute if score audio_pack mck_audio_pack matches 0 run scoreboard players set @s mck_sound_engine 585

execute if score audio_pack mck_audio_pack matches 175 unless score @s mck_drive_mode matches 2 run playsound custom:car.meme1.driving player @s[scores={mck_setting1=1}] ~ ~ ~ 0.34 1
execute if score audio_pack mck_audio_pack matches 175 if score @s mck_drive_mode matches 2 run playsound custom:car.meme1.drivingwater player @s[scores={mck_setting1=1}] ~ ~ ~ 0.34 1
execute if score audio_pack mck_audio_pack matches 175 run scoreboard players set @s mck_sound_engine 315