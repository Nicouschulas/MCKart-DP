function mck:bots/summon

scoreboard players remove botcount mck_temp 1
scoreboard players add difficulty mck_setting1 1
execute if score difficulty mck_setting1 matches 4.. run scoreboard players set difficulty mck_setting1 1
execute if score botcount mck_temp matches 1.. run function mck:lobby/normal/bots_summon