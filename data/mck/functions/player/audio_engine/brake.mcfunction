execute if score @s mck_audio_pack matches 0 unless score @s mck_drive_mode matches 2 run playsound custom:car.default.braking player @s[scores={mck_setting1=1}] ~ ~ ~ 0.11 0.7
execute if score @s mck_audio_pack matches 0 if score @s mck_drive_mode matches 2 run playsound custom:car.default.brakingwater player @s[scores={mck_setting1=1}] ~ ~ ~ 0.11 0.7

execute if score @s mck_audio_pack matches 175 unless score @s mck_drive_mode matches 2 run playsound custom:car.meme1.braking player @s[scores={mck_setting1=1}] ~ ~ ~ 0.11 1
execute if score @s mck_audio_pack matches 175 if score @s mck_drive_mode matches 2 run playsound custom:car.meme1.brakingwater player @s[scores={mck_setting1=1}] ~ ~ ~ 0.11 1