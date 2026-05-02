data modify storage temp goods set from entity @s EnderItems[5].tag.player_goods

scoreboard players set bool mck_temp 0
execute store result score amount mck_temp run data get storage temp goods[{components:{group:3b}}].data.amount
execute if score amount mck_temp matches 1.. run scoreboard players set bool mck_temp 1


execute if score bool mck_temp matches 1 run scoreboard players remove amount mck_temp 1
execute if score bool mck_temp matches 1 run scoreboard players add @s mck_super_vote 1
execute if score bool mck_temp matches 1 store result storage temp goods[{components:{group:3b}}].data.amount int 1 run scoreboard players get amount mck_temp
execute if score bool mck_temp matches 1 run item replace block 0 0 0 container.0 from entity @s enderchest.5
execute if score bool mck_temp matches 1 run data modify block 0 0 0 Items[0].tag.player_goods set from storage temp goods
execute if score bool mck_temp matches 1 run item replace entity @s enderchest.5 from block 0 0 0 container.0
execute if score bool mck_temp matches 1 run tellraw @s " "
execute if score bool mck_temp matches 1 run tellraw @s [{"text":"[","color":"gray","bold":true},{"translate":"system","color":"gold","bold":false},{"text":"] "},{"translate":"menu.page.tracks.super_vote.used","color":"white","bold":false}]
execute if score bool mck_temp matches 1 run tellraw @s " "
execute if score bool mck_temp matches 1 run playsound minecraft:entity.player.levelup master @s[scores={mck_setting1=1}] ~ ~ ~ 1 0.6 1

execute if score bool mck_temp matches 0 run tellraw @s [{"text":"[","color":"gray","bold":true},{"translate":"system","color":"gold","bold":false},{"text":"] "},{"translate":"menu.page.tracks.super_vote.error","color":"#FF837A","bold":false}]
execute if score bool mck_temp matches 0 run playsound minecraft:block.note_block.didgeridoo master @s[scores={mck_setting1=1}] ~ ~ ~ 10 0.4