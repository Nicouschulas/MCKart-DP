item replace entity @s enderchest.0 with paper
item replace entity @s enderchest.1 with player_head
item replace entity @s enderchest.2 with paper
item replace entity @s enderchest.3 with paper
item replace entity @s enderchest.5 with chest{player_goods:[]}

item replace entity @s enderchest.25 with air
item replace entity @s enderchest.26 with air

scoreboard players set @s mck_bank 0
scoreboard players set @s mck_kart_fragments 0
scoreboard players set @s mck_quest1 0
scoreboard players set @s mck_quest2 0
scoreboard players set @s mck_quest3 0
scoreboard players set @s mck_challenge_level 1
scoreboard players set @s mck_kart_model 101
scoreboard players set @s mck_glider_model 101

stopsound @s ambient

scoreboard players set @s mck_hat_model 0
scoreboard players set @s mck_handheld_model 0
scoreboard players set @s mck_trail 0
scoreboard players set @s mck_audio_pack 0

scoreboard players set @s mck_scene 1

scoreboard players reset @s mck_force_reset

xp set @s 0 levels
xp set @s 0 points

team join rank0 @s
function mck:player/stats/create

scoreboard players operation in mck_db_bit = @s mck_id
function mck:database/player_remove

function mck:database/player_add

tp @s -369.50 69.00 598.50 -180.75 9.29
function mck:player/reset
scoreboard players set @s mck_scene_anim 6

title @s[tag=!builder] times 0 15 20
title @s[tag=!builder] subtitle "\ue000"
title @s[tag=!builder] title "\uaab7"