scoreboard players set bool mck_temp 0
tag @s add now
execute if score @s mck_id matches 1.. run scoreboard players set bool mck_temp 1
execute if score bool mck_temp matches 1 run scoreboard players operation temp mck_temp = @s mck_id
execute if score bool mck_temp matches 1 run execute as @e[tag=kart,type=fox] if score @s mck_id = temp mck_temp run function mck:kart/kill
execute if score bool mck_temp matches 1 run summon fox ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Type:"red",CanPickUpLoot:0b,Tags:["kart","temp"],HandItems:[{id:"minecraft:diamond",Count:1b,tag:{CustomModelData:110,killme:1b}},{}],Passengers:[{id:"minecraft:item_display",Tags:["item_mount"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.6f,0f],scale:[2f,2f,2f]},teleport_duration:2,item:{id:"minecraft:air",Count:1b}}]}
execute if score bool mck_temp matches 1 run scoreboard players operation temp mck_temp = @s mck_kart_model
execute if score bool mck_temp matches 1 as @e[tag=temp,type=fox,limit=1,sort=nearest] store result entity @s HandItems[0].tag.CustomModelData int 1 run scoreboard players get temp mck_temp
execute if score bool mck_temp matches 1 run scoreboard players operation temp mck_temp = @s mck_id
execute if score bool mck_temp matches 1 as @e[tag=temp,type=fox,limit=1,sort=nearest] run scoreboard players operation @s mck_id = temp mck_temp

execute if score bool mck_temp matches 1 if score @s mck_lobby_status matches 1 as @e[tag=temp,type=fox,limit=1,sort=nearest] run data modify entity @s Rotation[0] set from storage temp startangle
execute if score bool mck_temp matches 1 if score @s mck_lobby_status matches 1 as @e[tag=temp,type=fox,limit=1,sort=nearest] run tp @p[tag=now] @s

execute if score bool mck_temp matches 1 as @e[tag=temp,type=fox,limit=1,sort=nearest] run scoreboard players set @s mck_x_rot 0
execute if score bool mck_temp matches 1 run ride @s mount @e[tag=temp,type=fox,limit=1,sort=nearest]
execute if score bool mck_temp matches 1 on vehicle run tag @s remove temp
tag @s remove now