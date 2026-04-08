scoreboard players set slot mck_temp 0

execute unless data storage menu inv[{Slot:18b}] run scoreboard players set slot mck_temp 18
execute unless data storage menu inv[{Slot:19b}] run scoreboard players set slot mck_temp 19
execute unless data storage menu inv[{Slot:20b}] run scoreboard players set slot mck_temp 20
execute unless data storage menu inv[{Slot:21b}] run scoreboard players set slot mck_temp 21
execute unless data storage menu inv[{Slot:22b}] run scoreboard players set slot mck_temp 22
execute unless data storage menu inv[{Slot:23b}] run scoreboard players set slot mck_temp 23
execute unless data storage menu inv[{Slot:24b}] run scoreboard players set slot mck_temp 24
execute unless data storage menu inv[{Slot:25b}] run scoreboard players set slot mck_temp 25
execute unless data storage menu inv[{Slot:26b}] run scoreboard players set slot mck_temp 26

execute unless data storage menu inv[{Slot:30b}] run scoreboard players set slot mck_temp 30
execute unless data storage menu inv[{Slot:31b}] run scoreboard players set slot mck_temp 32
execute unless data storage menu inv[{Slot:32b}] run scoreboard players set slot mck_temp 31

execute unless data storage menu inv[{Slot:27b}] run scoreboard players set slot mck_temp 27
execute unless data storage menu inv[{Slot:35b}] run scoreboard players set slot mck_temp 35


execute if score @s mck_lobby matches 1.. if score slot mck_temp matches 18..26 run function mck:menu/page_tracks/get_track_sel

execute if score slot mck_temp matches 30..31 run function mck:menu/page_tracks/change_page
execute if score slot mck_temp matches 30..31 run playsound ui.button.click master @s[scores={mck_setting1=1}] ~ ~ ~ 0.3 0.9

execute if score @s mck_lobby matches 1.. if score slot mck_temp matches 27 run function mck:menu/page_tracks/super_vote
execute if score @s mck_lobby matches 1.. if score slot mck_temp matches 35 run function mck:menu/page_tracks/random


execute if score slot mck_temp matches 1.. run function mck:menu/draw

execute unless data storage menu inv[{Slot:13b}] run function mck:menu/draw