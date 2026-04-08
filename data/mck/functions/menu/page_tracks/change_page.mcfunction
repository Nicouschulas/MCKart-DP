execute store result score cups mck_temp run data get storage tracks data
execute if score slot mck_temp matches 30 run scoreboard players remove @s mck_tracks_page 1
execute if score slot mck_temp matches 31 run scoreboard players add @s mck_tracks_page 1

execute if score @s mck_tracks_page matches ..0 run scoreboard players operation @s mck_tracks_page = cups mck_temp
execute if score @s mck_tracks_page > cups mck_temp run scoreboard players set @s mck_tracks_page 1