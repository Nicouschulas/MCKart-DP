# CHALLENGER KART ID HIER REIN
#scoreboard players set @s mck_goods_id X
#function mck:player/gitgud/gitgud

execute if score @s mck_challenge_level matches ..9 run scoreboard players operation @s mck_goods_id = lootbox.id mck_goods_id
execute if score @s mck_challenge_level matches ..9 run function mck:player/gitgud/gitgud

execute if score @s mck_challenge_level matches 10 run scoreboard players set @s mck_goods_id 58
execute if score @s mck_challenge_level matches 10 run function mck:player/gitgud/gitgud

execute if score @s mck_challenge_level matches ..9 run xp add @s 20 points
execute if score @s mck_challenge_level matches 10 run xp add @s 100 points

scoreboard players add @s mck_kart_fragments 4


playsound custom:level_challenge master @s[scores={mck_setting1=1}] ~ ~ ~ 1 1
particle minecraft:end_rod ~ ~1 ~ 0.3 0.6 0.3 0.1 20

tellraw @s " "
execute if score @s mck_challenge_level matches ..9 run tellraw @s {"translate":"chat.alert.challenge.title","font":"font1","color":"#B4FF82","bold":false,"italic":false}
execute if score @s mck_challenge_level matches 10 run tellraw @s [{"text":" O  ","color":"#FFE6C4","obfuscated":true,"font":"font1"},{"translate":"chat.alert.challenge.title_finish","color":"#FFE59E","bold":false,"italic":false,"obfuscated":false},{"text":"  O","color":"#FFE6C4","obfuscated":true}]
tellraw @s " "
tellraw @s " "
tellraw @s {"translate":"chat.alert.challenge.subtitle","color":"#B9D6A3","bold":true,"italic":false}
#tellraw @s [{"text":"     • ","color":"#DBDAD0","bold":false,"italic":false},{"translate":"chat.alert.challenge.kart1","color":"#FFE48C","bold":false,"italic":false},{"score":{"name":"@s","objective":"mck_challenge_level"},"color":"#FFEDB3","bold":true,"italic":false},{"translate":"chat.alert.challenge.kart2","color":"#FFE48C","bold":false,"italic":false}]
tellraw @s [{"text":"     • ","color":"#DBDAD0","bold":false,"italic":false},{"text":"4","color":"#FF8C69","bold": true},{"text":"\uaae1","bold":false,"color": "white"},{"translate":"chat.alert.challenge.kart_fragments","color":"#FF8C69"}]
execute if score @s mck_challenge_level matches ..9 run tellraw @s [{"text":"     • ","color":"#DBDAD0","bold":false,"italic":false},{"text":"1","color":"#BDE9F0","bold":true,"italic":false},{"translate":"chat.alert.challenge.lootbox","color":"#8AB1BF","bold":false,"italic":false}]
execute if score @s mck_challenge_level matches 10 run tellraw @s [{"text":"     • ","color":"#DBDAD0","bold":false,"italic":false},{"translate":"chat.alert.challenge.hat1","color":"#8AB1BF","bold":false,"italic":false},{"translate":"chat.alert.challenge.hat2","color":"#E6DA73","bold":true,"italic":false},{"translate":"chat.alert.challenge.hat3","color":"#8AB1BF","bold":false,"italic":false}]
execute if score @s mck_challenge_level matches ..9 run tellraw @s [{"text":"     • ","color":"#DBDAD0","bold":false,"italic":false},{"translate":"chat.alert.challenge.exp","color":"#BF69AB","bold":true,"italic":false}]
execute if score @s mck_challenge_level matches 10 run tellraw @s [{"text":"     • ","color":"#DBDAD0","bold":false,"italic":false},{"translate":"chat.alert.challenge.exp_finish","color":"#BF69AB","bold":true,"italic":false}]
tellraw @s " "


scoreboard players add @s mck_challenge_level 1
scoreboard players set @s mck_quest1 0
scoreboard players set @s mck_quest2 0
scoreboard players set @s mck_quest3 0

data modify storage temp enderchest set from entity @s EnderItems

execute if score @s mck_challenge_level matches 2 run data modify storage temp enderchest[4].tag.stats.challenge_goal1 set value 1
execute if score @s mck_challenge_level matches 2 run data modify storage temp enderchest[4].tag.stats.challenge_goal2 set value 50
execute if score @s mck_challenge_level matches 2 run data modify storage temp enderchest[4].tag.stats.challenge_goal3 set value 4

execute if score @s mck_challenge_level matches 3 run data modify storage temp enderchest[4].tag.stats.challenge_goal1 set value 1
execute if score @s mck_challenge_level matches 3 run data modify storage temp enderchest[4].tag.stats.challenge_goal2 set value 15
execute if score @s mck_challenge_level matches 3 run data modify storage temp enderchest[4].tag.stats.challenge_goal3 set value 10

execute if score @s mck_challenge_level matches 4 run data modify storage temp enderchest[4].tag.stats.challenge_goal1 set value 1
execute if score @s mck_challenge_level matches 4 run data modify storage temp enderchest[4].tag.stats.challenge_goal2 set value 5
execute if score @s mck_challenge_level matches 4 run data modify storage temp enderchest[4].tag.stats.challenge_goal3 set value 1

execute if score @s mck_challenge_level matches 5 run data modify storage temp enderchest[4].tag.stats.challenge_goal1 set value 500
execute if score @s mck_challenge_level matches 5 run data modify storage temp enderchest[4].tag.stats.challenge_goal2 set value 1
execute if score @s mck_challenge_level matches 5 run data modify storage temp enderchest[4].tag.stats.challenge_goal3 set value 20

execute if score @s mck_challenge_level matches 6 run data modify storage temp enderchest[4].tag.stats.challenge_goal1 set value 20
execute if score @s mck_challenge_level matches 6 run data modify storage temp enderchest[4].tag.stats.challenge_goal2 set value 20
execute if score @s mck_challenge_level matches 6 run data modify storage temp enderchest[4].tag.stats.challenge_goal3 set value 15

execute if score @s mck_challenge_level matches 7 run data modify storage temp enderchest[4].tag.stats.challenge_goal1 set value 20
execute if score @s mck_challenge_level matches 7 run data modify storage temp enderchest[4].tag.stats.challenge_goal2 set value 25
execute if score @s mck_challenge_level matches 7 run data modify storage temp enderchest[4].tag.stats.challenge_goal3 set value 1

execute if score @s mck_challenge_level matches 8 run data modify storage temp enderchest[4].tag.stats.challenge_goal1 set value 20
execute if score @s mck_challenge_level matches 8 run data modify storage temp enderchest[4].tag.stats.challenge_goal2 set value 1
execute if score @s mck_challenge_level matches 8 run data modify storage temp enderchest[4].tag.stats.challenge_goal3 set value 10

execute if score @s mck_challenge_level matches 9 run data modify storage temp enderchest[4].tag.stats.challenge_goal1 set value 30
execute if score @s mck_challenge_level matches 9 run data modify storage temp enderchest[4].tag.stats.challenge_goal2 set value 1
execute if score @s mck_challenge_level matches 9 run data modify storage temp enderchest[4].tag.stats.challenge_goal3 set value 10

execute if score @s mck_challenge_level matches 10 run data modify storage temp enderchest[4].tag.stats.challenge_goal1 set value 1
execute if score @s mck_challenge_level matches 10 run data modify storage temp enderchest[4].tag.stats.challenge_goal2 set value 1
execute if score @s mck_challenge_level matches 10 run data modify storage temp enderchest[4].tag.stats.challenge_goal3 set value 1

execute if score @s mck_challenge_level matches 10 run scoreboard players set @s mck_scene 18
execute if score @s mck_challenge_level matches 10 run function mck:player/scenes/start

execute store result storage temp enderchest[4].tag.stats.challenge_level int 1 run scoreboard players get @s mck_challenge_level

item replace block 0 0 0 container.0 from entity @s enderchest.4
data modify block 0 0 0 Items[0].tag.stats set from storage temp enderchest[4].tag.stats
item replace entity @s enderchest.4 from block 0 0 0 container.0
function mck:player/stats/push_to_db

function mck:player/challenges/pre_check