summon end_crystal ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowBottom:0b,Tags:["fake_itembox","temp"]}
scoreboard players operation @e[components:{tag:"temp",type:"minecraft:end_crystal"}] mck_id = temp mck_temp
scoreboard players operation @e[components:{tag:"temp",type:"minecraft:end_crystal"}] mck_lobby = temp2 mck_temp
scoreboard players set @e[components:{tag:"temp",type:"minecraft:end_crystal"}] mck_timer 12

tag @e[components:{tag:"temp",type:"minecraft:end_crystal"}] remove temp