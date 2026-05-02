summon item 0 0 0 {NoGravity:1b,Age:-6000,PickupDelay:32767,Invulnerable:1b,Tags:["coin","temp"],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,components:{minecraft:item_name:'{"text":"Coin"}',minecraft:custom_model_data:1000}}}
scoreboard players operation @e[tag=temp,type=item] mck_id = lobbyraceid mck_temp
scoreboard players operation @e[tag=temp,type=item] mck_lobby = lobbyid mck_temp

execute store result score x mck_temp run data get storage temp coin.pos[0] 10
execute store result score z mck_temp run data get storage temp coin.pos[2] 10
scoreboard players add x mck_temp 5
scoreboard players add z mck_temp 5
execute store result storage temp coin.pos[0] double 0.1 run scoreboard players get x mck_temp
execute store result storage temp coin.pos[2] double 0.1 run scoreboard players get z mck_temp

data modify entity @e[type=item,tag=temp,limit=1] Pos set from storage temp coin.pos
execute as @e[type=item,tag=temp,limit=1] at @s if block ~ ~ ~ water run scoreboard players set @s mck_drive_mode 1
tag @e[type=item,tag=temp] remove temp