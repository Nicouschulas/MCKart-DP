# status -72 = Bob
# status 0 = lobby/frei
# status 1 = driver (kann fahrzeug benutzen)
# status 2 = spectator
# status 3 = tutorial/first join
scoreboard objectives add mck_status dummy
scoreboard objectives add mck_spectate dummy

# lobby_status = 1 vor der runde (kamerafahrt und countdown)
# lobby_status = 2 in der runde
# lobby_status = 3 wenn runde fertig gefahren
scoreboard objectives add mck_lobby_status dummy
scoreboard objectives add mck_finish_anim dummy
scoreboard objectives add mck_toast_anim dummy

scoreboard objectives add mck_scene dummy
scoreboard objectives add mck_scene_anim dummy


scoreboard objectives add mck_region dummy
scoreboard objectives add mck_region_timer dummy

scoreboard objectives add mck_parkour dummy


# none = standard
# 1 = vip
# 2 = streamer/youtuber
# 3 = admin
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


# cosmetic stuff
scoreboard objectives add mck_kart_model dummy
scoreboard objectives add mck_glider_model dummy
scoreboard objectives add mck_handheld_model dummy
scoreboard objectives add mck_trail dummy
scoreboard objectives add mck_hat_model dummy
scoreboard objectives add mck_audio_pack dummy


# Sound loops
scoreboard objectives add mck_sound_engine dummy
scoreboard objectives add mck_sound_music dummy



# Item stuff
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

# challenge trackers
scoreboard objectives add mck_quest_temp dummy
scoreboard objectives add mck_quest1 dummy
scoreboard objectives add mck_quest2 dummy
scoreboard objectives add mck_quest3 dummy
scoreboard objectives add mck_challenge_level dummy

# start positionen
scoreboard objectives add mck_startangle dummy
scoreboard objectives add mck_startx dummy
scoreboard objectives add mck_starty dummy
scoreboard objectives add mck_startz dummy
scoreboard objectives add mck_camx dummy
scoreboard objectives add mck_camy dummy
scoreboard objectives add mck_camz dummy

# menu
scoreboard objectives add mck_lobby dummy
scoreboard objectives add mck_spec_lobby dummy
scoreboard objectives add mck_lobby_type dummy
scoreboard objectives add mck_lobby_cmd dummy
scoreboard objectives add mck_player_menu dummy
scoreboard objectives add mck_player_track_menu dummy

# joinlocked
scoreboard objectives add mck_lobby_setting1 dummy
# locked
scoreboard objectives add mck_lobby_setting2 dummy
# autokick
scoreboard objectives add mck_lobby_setting3 dummy
# bots
scoreboard objectives add mck_lobby_setting5 dummy

scoreboard objectives add mck_page dummy
scoreboard objectives add mck_previous_page dummy
scoreboard objectives add mck_sel_track dummy
scoreboard objectives add mck_tracks_page dummy

# timer
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

# kart variablen
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


# stats
scoreboard objectives add mck_db_bit dummy
scoreboard objectives add mck_rl dummy
scoreboard objectives add mck_goods_id dummy

# last position
scoreboard objectives add mck_last_x dummy
scoreboard objectives add mck_last_y dummy
scoreboard objectives add mck_last_z dummy

# race data
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

# settings
scoreboard objectives add mck_admin_settings dummy


scoreboard objectives add mck_force_reset dummy

scoreboard objectives add mck_reset_timer dummy


execute unless score automenudelay mck_admin_settings = automenudelay mck_admin_settings run scoreboard players set automenudelay mck_admin_settings 1
execute unless score maxplayersnormal mck_admin_settings = maxplayersnormal mck_admin_settings run scoreboard players set maxplayersnormal mck_admin_settings 9
execute unless score maxplayersranked mck_admin_settings = maxplayersranked mck_admin_settings run scoreboard players set maxplayersranked mck_admin_settings 3
execute unless score botcount mck_admin_settings = botcount mck_admin_settings run scoreboard players set botcount mck_admin_settings 5
execute unless score coinrespawn mck_admin_settings = coinrespawn mck_admin_settings run scoreboard players set coinrespawn mck_admin_settings 6
execute unless score itemrespawn mck_admin_settings = itemrespawn mck_admin_settings run scoreboard players set itemrespawn mck_admin_settings 2
execute unless score time_per_rank mck_admin_settings = time_per_rank mck_admin_settings run scoreboard players set time_per_rank mck_admin_settings 60
execute unless score ranking_list_update mck_admin_settings = ranking_list_update mck_admin_settings run scoreboard players set ranking_list_update mck_admin_settings 18000
execute unless score coin_multiplier_length mck_admin_settings = coin_multiplier_length mck_admin_settings run scoreboard players set coin_multiplier_length mck_admin_settings 18000
execute unless score drive_tick_rate mck_admin_settings = drive_tick_rate mck_admin_settings run scoreboard players set drive_tick_rate mck_admin_settings 1
execute unless score allow_free_drive mck_admin_settings = allow_free_drive mck_admin_settings run scoreboard players set allow_free_drive mck_admin_settings 1

scoreboard players set is.singleplayer mck_admin_settings 0



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
execute unless block 0 -16 0 barrel run setblock 0 -16 0 barrel[facing=down]{CustomName:'{"text":"Cup 16","color":"dark_gray","bold":true}'}

# parts of Cloud Wolf's WASD-Detection. Source: https://youtu.be/77jQnRSYYss
scoreboard objectives add wasd dummy
scoreboard objectives add wasd.x dummy
scoreboard objectives add wasd.z dummy
scoreboard objectives add wasd.math dummy

scoreboard objectives add wasd.constant dummy
scoreboard players set #bot wasd.constant 2
scoreboard players set #leaf wasd.constant 72
scoreboard players set #tumble wasd.constant 30
scoreboard players set #-46496 wasd.constant -46496
scoreboard players set #-1 wasd.constant -1
scoreboard players set #2 wasd.constant 2
scoreboard players set #5 wasd.constant 5
scoreboard players set #10 wasd.constant 10
scoreboard players set #360 wasd.constant 360
scoreboard players set #1000 wasd.constant 1000
scoreboard players set #10000 wasd.constant 10000
scoreboard players set #57295 wasd.constant 57295

scoreboard players set #100 wasd.constant 100
scoreboard players set #100000 wasd.constant 100000
scoreboard players set #1000000 wasd.constant 1000000

scoreboard players set #-1 mck_time -1
scoreboard players set #2 mck_time 2
scoreboard players set #7 mck_time 7
scoreboard players set #9 mck_time 9
scoreboard players set #10 mck_time 10
scoreboard players set #12 mck_time 12
scoreboard players set #20 mck_time 20
scoreboard players set #1200 mck_time 1200
scoreboard players set #72000 mck_time 72000

scoreboard players set #place_checkpoints mck_temp -1




# part of piet's cinematic datapack
scoreboard objectives add pcd.enable dummy
scoreboard objectives add pcd.settings dummy
execute unless score #i_per_tick pcd.settings = #i_per_tick pcd.settings run scoreboard players set #i_per_tick pcd.settings 40
execute unless score #length_divide pcd.settings = #length_divide pcd.settings run scoreboard players set #length_divide pcd.settings 2
scoreboard objectives add pcd.menu dummy
scoreboard objectives add pcd.menu_point dummy
scoreboard objectives add pcd.selected_slot dummy
scoreboard objectives add pcd.sneak minecraft.custom:sneak_time
scoreboard objectives add pcd.use minecraft.used:carrot_on_a_stick
scoreboard objectives add pcd.math dummy
scoreboard objectives add pcd.render dummy
scoreboard objectives add pcd.id dummy

scoreboard players set #-1 pcd.math -1

scoreboard objectives add pcd.temp dummy

bossbar add pcd.render "Rendering frames: 0/0"
bossbar set pcd.render color white
bossbar set pcd.render style progress
bossbar set pcd.render visible true

execute unless score pcd.first_start pcd.enable = pcd.first_start pcd.enable run function pcd:first_start

tellraw @a [{"text":"[","color":"white","bold":true},{"text":"P","color":"#61A0FF"},{"text":"C","color":"#94BFFF"},{"text":"D","color":"#BDD9FF"},{"text":"]"},{"text":" Datapack reloaded!","color":"gray","bold":false}]

bossbar add ranklist_sort [{"translate":"ranklist.bossbar","color":"#CFCFCF"},{"score":{"name":"ranklist_progress","objective":"mck_temp"},"color":"#57DDFF","bold":true},{"text":",","color":"#57DDFF","bold":true},{"score":{"name":"ranklist_progress2","objective":"mck_temp"},"color":"#57DDFF","bold":true},{"text":"%","color":"#57DDFF","bold":true}]
bossbar set ranklist_sort color white
bossbar set ranklist_sort visible true


bossbar add coin_multiplier ""
bossbar set coin_multiplier color yellow
bossbar set coin_multiplier players @a
bossbar set coin_multiplier visible false
execute store result bossbar coin_multiplier max run scoreboard players get coin_multiplier_length mck_admin_settings

bossbar add phone {"text": "\uab14","color": "white","italic": false}
bossbar set phone visible true
bossbar set phone style progress
bossbar set phone color purple





# teams

team add rank1 [{"text":"[","color":"gray","bold":true},{"translate":"ranklist.rank1","color":"#FF4551","bold":true,"italic":false},{"text":"]"}]
team add rank2 [{"text":"[","color":"gray","bold":true},{"translate":"ranklist.rank2","color":"#BB87FF","bold":true,"italic":false},{"text":"]"}]
team add rank3 [{"text":"[","color":"gray","bold":true},{"translate":"ranklist.rank3","color":"#7DB5FF","bold":true,"italic":false},{"text":"]"}]
team add rank4 [{"text":"[","color":"gray","bold":true},{"translate":"ranklist.rank4","color":"#49D68B","bold":true,"italic":false},{"text":"]"}]
team add rank5 [{"text":"[","color":"gray","bold":true},{"translate":"ranklist.rank5","color":"#FFCC24","bold":true,"italic":false},{"text":"]"}]
team add rank6 [{"text":"[","color":"gray","bold":true},{"translate":"ranklist.rank6","color":"#E8FFFF","bold":true,"italic":false},{"text":"]"}]
team add rank7 [{"text":"[","color":"gray","bold":true},{"translate":"ranklist.rank7","color":"#D1A075","bold":true,"italic":false},{"text":"]"}]
team add rank8 [{"text":"[","color":"gray","bold":true},{"translate":"ranklist.rank8","color":"#BFAFA8","bold":true,"italic":false},{"text":"]"}]
team add rank9 [{"text":"[","color":"gray","bold":true},{"translate":"ranklist.rank9","color":"#FAFF70","bold":true,"italic":false},{"text":"]"}]
team add rank0 [{"text":"[","color":"gray","bold":true},{"translate":"ranklist.rank0","color":"#A1A1A1","bold":true,"italic":false},{"text":"]"}]

team modify rank1 prefix [{"text":"\uaba1 ","color":"white","bold":false}]
team modify rank2 prefix [{"text":"\uaba2 ","color":"white","bold":false}]
team modify rank3 prefix [{"text":"\uaba3 ","color":"white","bold":false}]
team modify rank4 prefix [{"text":"\uaba4 ","color":"white","bold":false}]
team modify rank5 prefix [{"text":"\uaba5 ","color":"white","bold":false}]
team modify rank6 prefix [{"text":"\uaba6 ","color":"white","bold":false}]
team modify rank7 prefix [{"text":"\uaba7 ","color":"white","bold":false}]
team modify rank8 prefix [{"text":"\uaba8 ","color":"white","bold":false}]
team modify rank9 prefix [{"text":"\uaba9 ","color":"white","bold":false}]
team modify rank0 prefix [{"text":"\uaba0 ","color":"white","bold":false}]

team modify rank1 collisionRule never
team modify rank1 deathMessageVisibility never
team modify rank1 friendlyFire false
team modify rank2 collisionRule never
team modify rank2 deathMessageVisibility never
team modify rank2 friendlyFire false
team modify rank3 collisionRule never
team modify rank3 deathMessageVisibility never
team modify rank3 friendlyFire false
team modify rank4 collisionRule never
team modify rank4 deathMessageVisibility never
team modify rank4 friendlyFire false
team modify rank5 collisionRule never
team modify rank5 deathMessageVisibility never
team modify rank5 friendlyFire false
team modify rank6 collisionRule never
team modify rank6 deathMessageVisibility never
team modify rank6 friendlyFire false
team modify rank7 collisionRule never
team modify rank7 deathMessageVisibility never
team modify rank7 friendlyFire false
team modify rank8 collisionRule never
team modify rank8 deathMessageVisibility never
team modify rank8 friendlyFire false
team modify rank9 collisionRule never
team modify rank9 deathMessageVisibility never
team modify rank9 friendlyFire false
team modify rank0 collisionRule never
team modify rank0 deathMessageVisibility never
team modify rank0 friendlyFire false



team add ingame [{"text":" "}]
team modify ingame prefix [{"text":"⬤ ","color":"#FF1414","bold":true}]

team modify ingame collisionRule never
team modify ingame deathMessageVisibility never
team modify ingame friendlyFire false

team add spectate [{"text":" "}]
team modify spectate prefix [{"text":"\uabaa ","color":"white","bold":true}]

team modify spectate collisionRule never
team modify spectate deathMessageVisibility never
team modify spectate friendlyFire false


team add intro
team modify intro collisionRule never
team modify intro nametagVisibility hideForOwnTeam
team modify intro seeFriendlyInvisibles false
team modify intro friendlyFire false



# data
data modify storage recordings ticks set value [[],[],[],[],[],[],[],[],[],[]]

scoreboard players set lootbox.id mck_goods_id 8

data modify storage lootboxes level1 set value [11,12,13,14, 19,20, 56, 64, 65]
data modify storage lootboxes level2 set value [22,23, 27,28, 59,60,62, 7]
data modify storage lootboxes level3 set value [35, 63, 6, 9]



schedule clear mck:lobby/loop
schedule function mck:lobby/loop 1s

schedule clear mck:coin_multiplier/on_sec
schedule function mck:coin_multiplier/on_sec 1s

data modify storage databases version set value ['{"text":"                        Ver. ","color":"#94A6FF","bold":false,"italic":false}','{"text":"1.0.1","color":"#CFDDFF","bold":true,"italic":false}']

tellraw @a [{"text":"[","color":"#949494","bold":true},{"text":"MCKart 2.0","color":"#FFD321"},{"text":"] ","color":"#949494"},{"translate":"datapack.reloaded","color":"#C9C9C9","bold":false}]












#
#   FIXING STUFF FOR PREVIOUS VERSIONS
#
data remove storage temp recording_frame