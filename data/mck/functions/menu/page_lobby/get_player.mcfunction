execute if score sel mck_temp matches 1 store result score @s mck_player_menu run data get storage temp out.players[0]
execute if score sel mck_temp matches 2 store result score @s mck_player_menu run data get storage temp out.players[1]
execute if score sel mck_temp matches 3 store result score @s mck_player_menu run data get storage temp out.players[2]
execute if score sel mck_temp matches 4 store result score @s mck_player_menu run data get storage temp out.players[3]
execute if score sel mck_temp matches 5 store result score @s mck_player_menu run data get storage temp out.players[4]
execute if score sel mck_temp matches 6 store result score @s mck_player_menu run data get storage temp out.players[5]
execute if score sel mck_temp matches 7 store result score @s mck_player_menu run data get storage temp out.players[6]
execute if score sel mck_temp matches 8 store result score @s mck_player_menu run data get storage temp out.players[7]
execute if score sel mck_temp matches 9 store result score @s mck_player_menu run data get storage temp out.players[8]
execute if score sel mck_temp matches 10 store result score @s mck_player_menu run data get storage temp out.players[9]
execute if score sel mck_temp matches 11 store result score @s mck_player_menu run data get storage temp out.players[10]
execute if score sel mck_temp matches 12 store result score @s mck_player_menu run data get storage temp out.players[11]

scoreboard players operation @s mck_previous_page = @s mck_page
scoreboard players set @s mck_page -8
scoreboard players set @s mck_player_track_menu 0

execute if score @s mck_challenge_level matches 2 if score @s mck_quest1 matches 0.. run scoreboard players add @s mck_quest1 1
execute if score @s mck_challenge_level matches 2 if score @s mck_quest1 matches 0.. run function mck:player/challenges/reached