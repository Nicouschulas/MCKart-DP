scoreboard objectives add mck_status dummy
scoreboard objectives add mck_spectate dummy

scoreboard objectives add mck_lobby_status dummy
scoreboard objectives add mck_finish_anim dummy
scoreboard objectives add mck_toast_anim dummy

scoreboard objectives add mck_scene dummy
scoreboard objectives add mck_scene_anim dummy

scoreboard objectives add mck_region dummy
scoreboard objectives add mck_region_timer dummy

scoreboard objectives add mck_parkour dummy

scoreboard objectives add mck_permission dummy

scoreboard objectives add mck_track dummy
scoreboard objectives add mck_checkpoint dummy
scoreboard objectives add mck_place dummy
scoreboard objectives add mck_place_pre dummy
scoreboard objectives add mck_coins dummy
scoreboard objectives add mck_coin_multiplier dummy
scoreboard objectives add mck_bank dummy
scoreboard objectives add mck_kart_fragments dummy
scoreboard objectives add mck_data dummy
scoreboard objectives add mck_time dummy
scoreboard objectives add mck_id dummy
scoreboard objectives add mck_race dummy
scoreboard objectives add mck_time_diff dummy

scoreboard objectives add mck_players dummy

scoreboard objectives add mck_kart_model dummy
scoreboard objectives add mck_glider_model dummy
scoreboard objectives add mck_handheld_model dummy
scoreboard objectives add mck_trail dummy
scoreboard objectives add mck_hat_model dummy
scoreboard objectives add mck_audio_pack dummy

scoreboard objectives add mck_sound_engine dummy
scoreboard objectives add mck_sound_music dummy

scoreboard objectives add mck_item_mount dummy
scoreboard objectives add mck_itembox dummy
scoreboard objectives add mck_item_uses dummy
scoreboard objectives add mck_item_delay dummy
scoreboard objectives add mck_item1 dummy
scoreboard objectives add mck_item2 dummy
scoreboard objectives add mck_item1_count dummy
scoreboard objectives add mck_item2_count dummy

scoreboard objectives add mck_blue_id dummy
scoreboard objectives add mck_red_id dummy
scoreboard objectives add mck_squid dummy
scoreboard objectives add mck_star dummy
scoreboard objectives add mck_leaf dummy
scoreboard objectives add mck_pipe dummy

scoreboard objectives add mck_setting1 dummy
scoreboard objectives add mck_setting2 dummy
scoreboard objectives add mck_setting3 dummy
scoreboard objectives add mck_setting4 dummy
scoreboard objectives add mck_setting5 dummy
scoreboard objectives add mck_setting6 dummy
scoreboard objectives add mck_setting7 dummy
scoreboard objectives add mck_setting8 dummy
scoreboard objectives add mck_setting9 dummy
scoreboard objectives add mck_setting10 dummy

scoreboard objectives add mck_quest_temp dummy
scoreboard objectives add mck_quest1 dummy
scoreboard objectives add mck_quest2 dummy
scoreboard objectives add mck_quest3 dummy
scoreboard objectives add mck_challenge_level dummy

scoreboard objectives add mck_startangle dummy
scoreboard objectives add mck_startx dummy
scoreboard objectives add mck_starty dummy
scoreboard objectives add mck_startz dummy
scoreboard objectives add mck_camx dummy
scoreboard objectives add mck_camy dummy
scoreboard objectives add mck_camz dummy

scoreboard objectives add mck_lobby dummy
scoreboard objectives add mck_spec_lobby dummy
scoreboard objectives add mck_lobby_type dummy
scoreboard objectives add mck_lobby_cmd dummy
scoreboard objectives add mck_player_menu dummy
scoreboard objectives add mck_player_track_menu dummy

scoreboard objectives add mck_lobby_setting1 dummy
scoreboard objectives add mck_lobby_setting2 dummy
scoreboard objectives add mck_lobby_setting3 dummy
scoreboard objectives add mck_lobby_setting5 dummy

scoreboard objectives add mck_page dummy
scoreboard objectives add mck_previous_page dummy
scoreboard objectives add mck_sel_track dummy
scoreboard objectives add mck_tracks_page dummy

scoreboard objectives add mck_sethead dummy
scoreboard objectives add mck_menudelay dummy
scoreboard objectives add mck_buyconfirm dummy
execute unless score delay mck_menudelay matches 1.. run scoreboard players set delay mck_menudelay 5

scoreboard objectives add mck_use minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add mck_sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add mck_temp dummy
scoreboard objectives add mck_timer dummy
scoreboard objectives add mck_leave custom:leave_game
scoreboard objectives add mck_death deathCount

scoreboard objectives add mck_y_pos dummy
scoreboard objectives add mck_x_rot dummy
scoreboard objectives add mck_speed dummy
scoreboard objectives add mck_brake dummy
scoreboard objectives add mck_grip dummy
scoreboard objectives add mck_stun dummy
scoreboard objectives add mck_boost dummy
scoreboard objectives add mck_dir dummy
scoreboard objectives add mck_drift dummy
scoreboard objectives add mck_drive_mode dummy
scoreboard objectives add mck_tumble dummy
scoreboard objectives add mck_startboost dummy

scoreboard objectives add mck_db_bit dummy
scoreboard objectives add mck_rl dummy
scoreboard objectives add mck_goods_id dummy

scoreboard objectives add mck_last_x dummy
scoreboard objectives add mck_last_y dummy
scoreboard objectives add mck_last_z dummy

scoreboard objectives add mck_race_mr dummy
scoreboard objectives add mck_race_ch dummy

scoreboard objectives add mck_race_ax dummy
scoreboard objectives add mck_race_ay dummy
scoreboard objectives add mck_race_az dummy
scoreboard objectives add mck_race_bx dummy
scoreboard objectives add mck_race_by dummy
scoreboard objectives add mck_race_bz dummy

scoreboard objectives add mck_community dummy
scoreboard objectives add mck_shrooms_used dummy
scoreboard objectives add mck_lootbox dummy
scoreboard objectives add mck_super_vote dummy

scoreboard objectives add mck_manager_call dummy

scoreboard objectives add mck_admin_settings dummy

scoreboard objectives add mck_force_reset dummy

scoreboard objectives add mck_reset_timer dummy


function mck:set_admin_settings

function mck:bossbar/add



gamerule doDaylightCycle false
#time set 6000
gamerule doMobSpawning false
gamerule doMobLoot false
gamerule doWeatherCycle false
weather clear 999999
gamerule commandBlockOutput false
gamerule doFireTick false
gamerule doEntityDrops false
gamerule announceAdvancements false
gamerule doImmediateRespawn true
gamerule doTileDrops false
gamerule showDeathMessages false
gamerule keepInventory true
gamerule fallDamage false
gamerule fireDamage false
gamerule drowningDamage false
gamerule maxCommandChainLength 5000000
gamerule spectatorsGenerateChunks true


forceload add -216 -792 -216 -792
forceload add -233 -91 -233 -91
forceload add 0 0 0 0
kill @e[tag=data_handler,type=marker]
summon marker 0 0 0 {Tags:["data_handler"]}

execute unless block 0 0 0 barrel run setblock 0 0 0 barrel
execute unless block 0 1 0 dropper run setblock 0 1 0 dropper[facing=up]{CustomName:'{"text":"Lobbies Normal","color":"dark_gray","bold":true}'}
execute unless block 0 2 0 dropper run setblock 0 2 0 dropper[facing=up]{CustomName:'{"text":"Lobbies Ranked","color":"dark_gray","bold":true}'}
execute unless block 0 3 0 oak_sign run setblock 0 3 0 oak_sign

execute unless block 0 -1 0 barrel run setblock 0 -1 0 barrel[facing=down]{CustomName:'{"text":"Cup 1","color":"dark_gray","bold":true}'}
execute unless block 0 -2 0 barrel run setblock 0 -2 0 barrel[facing=down]{CustomName:'{"text":"Cup 2","color":"dark_gray","bold":true}'}
execute unless block 0 -3 0 barrel run setblock 0 -3 0 barrel[facing=down]{CustomName:'{"text":"Cup 3","color":"dark_gray","bold":true}'}
execute unless block 0 -4 0 barrel run setblock 0 -4 0 barrel[facing=down]{CustomName:'{"text":"Cup 4","color":"dark_gray","bold":true}'}
execute unless block 0 -5 0 barrel run setblock 0 -5 0 barrel[facing=down]{CustomName:'{"text":"Cup 5","color":"dark_gray","bold":true}'}
execute unless block 0 -6 0 barrel run setblock 0 -6 0 barrel[facing=down]{CustomName:'{"text":"Cup 6","color":"dark_gray","bold":true}'}
execute unless block 0 -7 0 barrel run setblock 0 -7 0 barrel[facing=down]{CustomName:'{"text":"Cup 7","color":"dark_gray","bold":true}'}
execute unless block 0 -8 0 barrel run setblock 0 -8 0 barrel[facing=down]{CustomName:'{"text":"Cup 8","color":"dark_gray","bold":true}'}
execute unless block 0 -9 0 barrel run setblock 0 -9 0 barrel[facing=down]{CustomName:'{"text":"Cup 9","color":"dark_gray","bold":true}'}
execute unless block 0 -10 0 barrel run setblock 0 -10 0 barrel[facing=down]{CustomName:'{"text":"Cup 10","color":"dark_gray","bold":true}'}
execute unless block 0 -11 0 barrel run setblock 0 -11 0 barrel[facing=down]{CustomName:'{"text":"Cup 11","color":"dark_gray","bold":true}'}
execute unless block 0 -12 0 barrel run setblock 0 -12 0 barrel[facing=down]{CustomName:'{"text":"Cup 12","color":"dark_gray","bold":true}'}
execute unless block 0 -13 0 barrel run setblock 0 -13 0 barrel[facing=down]{CustomName:'{"text":"Cup 13","color":"dark_gray","bold":true}'}
execute unless block 0 -14 0 barrel run setblock 0 -14 0 barrel[facing=down]{CustomName:'{"text":"Cup 14","color":"dark_gray","bold":true}'}
execute unless block 0 -15 0 barrel run setblock 0 -15 0 barrel[facing=down]{CustomName:'{"text":"Cup 15","color":"dark_gray","bold":true}'}

scoreboard players set lootbox.id mck_goods_id 8

data modify storage lootboxes level1 set value [11,12,13,14, 19,20, 56, 64, 65]
data modify storage lootboxes level2 set value [22,23, 27,28, 59,60,62, 7]
data modify storage lootboxes level3 set value [35, 63, 6, 9]

schedule clear mck:lobby/loop
schedule function mck:lobby/loop 1s

schedule clear mck:coin_multiplier/on_sec
schedule function mck:coin_multiplier/on_sec 1s

data modify storage databases version set value ['{"text":"                        Ver. ","color":"#94A6FF","bold":false,"italic":false}','{"text":"1.0.2","color":"#CFDDFF","bold":true,"italic":false}']

tellraw @a [{"text":"[","color":"#949494","bold":true},{"text":"MCKart 2.0","color":"#FFD321"},{"text":"] ","color":"#949494"},{"translate":"datapack.reloaded","color":"#C9C9C9","bold":false}]


data remove storage temp recording_frame