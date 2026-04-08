summon item ~ ~ ~ {PickupDelay:32767,Invulnerable:1b,Motion:[0.0,0.35,0.0],Tags:["banana"],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1003}}}

execute if score @s mck_challenge_level matches 3 if score @s mck_quest2 matches 0.. run scoreboard players add @s mck_quest2 1

scoreboard players set @e[tag=banana,limit=1,type=item,sort=nearest] mck_timer 16
scoreboard players operation @e[tag=banana,limit=1,type=item,sort=nearest] mck_id = @s mck_race

playsound custom:throwing master @a[scores={mck_setting1=1}] ~ ~ ~ 1 0.9