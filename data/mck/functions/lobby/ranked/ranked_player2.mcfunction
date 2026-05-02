execute if score @s mck_lobby_status matches 3 if score @s mck_finish_anim matches 0 run function mck:lobby/ranked/player_finish
execute if entity @s[components:{tag:["did_finish"]}] run scoreboard players operation lobbygametime mck_temp = lobbysafetime mck_temp
execute if entity @s[components:{tag:["did_finish"]}] run tag @s remove did_finish

execute if score @s mck_lobby_status matches 2 if score lobbygametime mck_temp matches ..100 at @s run playsound minecraft:block.note_block.bell master @s[scores={mck_setting1=1}] ~ ~ ~ 10 0.4

tag @s add inlobby

execute if score @s mck_spectate matches 1.. run scoreboard players operation id mck_temp = @s mck_id
execute if score @s mck_spectate matches 1.. as @a[gamemode=spectator,scores={mck_status=2}] if score @s mck_spectate = id mck_temp run tag @s add inlobby