execute if score temp mck_temp matches 1 run summon chicken ~ ~ ~ {Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,IsChickenJockey:0b,EggLayTime:9999999,Tags:["puppet","temp"],CustomName:'{"text":"Bot"}'}
execute if score temp mck_temp matches 2 run summon villager ~ ~ ~ {Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Tags:["puppet","temp"],CustomName:'{"text":"Bot"}',VillagerData:{profession:"minecraft:none",type:"minecraft:taiga"},Offers:{}}
execute if score temp mck_temp matches 3 run summon zombie ~ ~ ~ {Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,IsBaby:0b,CanBreakDoors:0b,Tags:["puppet","temp"],CustomName:'{"text":"Bot"}',ArmorItems:[{},{},{},{id:"minecraft:netherite_helmet",Count:1b,tag:{Unbreakable:1b}}]}
execute if score temp mck_temp matches 4 run summon pig ~ ~ ~ {Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Saddle:0b,Tags:["puppet","temp"],CustomName:'{"text":"Bot"}',ArmorItems:[{},{},{},{id:"minecraft:netherite_helmet",Count:1b,tag:{Unbreakable:1b}}]}
execute if score temp mck_temp matches 5 run summon rabbit ~ ~ ~ {Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Tags:["puppet","temp"],CustomName:'{"text":"Bot"}',ArmorItems:[{},{},{},{id:"minecraft:netherite_helmet",Count:1b,tag:{Unbreakable:1b}}]}
execute if score temp mck_temp matches 6 run summon pillager ~ ~ ~ {Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,PatrolLeader:0b,Patrolling:0b,CanJoinRaid:0b,Tags:["puppet","temp"],CustomName:'{"text":"Bot"}',ArmorItems:[{},{},{},{id:"minecraft:netherite_helmet",Count:1b,tag:{Unbreakable:1b}}]}
execute if score temp mck_temp matches 7 run summon skeleton ~ ~ ~ {Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Tags:["puppet","temp"],CustomName:'{"text":"Bot"}',ArmorItems:[{},{},{},{id:"minecraft:netherite_helmet",Count:1b,tag:{Unbreakable:1b}}]}
execute if score temp mck_temp matches 8 run summon frog ~ ~ ~ {Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Tags:["puppet","temp"],CustomName:'{"text":"Bot"}',ArmorItems:[{},{},{},{id:"minecraft:netherite_helmet",Count:1b,tag:{Unbreakable:1b}}]}
execute if score temp mck_temp matches 9 run summon fox ~ ~ ~ {Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Type:"snow",Tags:["puppet","temp"],CustomName:'{"text":"Bot"}',ArmorItems:[{},{},{},{id:"minecraft:netherite_helmet",Count:1b,tag:{Unbreakable:1b}}]}
execute if score temp mck_temp matches 10 run summon ravager ~ ~ ~ {Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,AttackTick:999999999,RoarTick:999999999,StunTick:999999999,PatrolLeader:0b,Patrolling:0b,CanJoinRaid:0b,Tags:["puppet","temp"],CustomName:'{"text":"Bot"}',ArmorItems:[{},{},{},{id:"minecraft:netherite_helmet",Count:1b,tag:{Unbreakable:1b}}]}
execute if score temp mck_temp matches 11 run summon illusioner ~ ~ ~ {Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,SpellTicks:999999999,PatrolLeader:0b,Patrolling:0b,CanJoinRaid:0b,Tags:["puppet","temp"],CustomName:'{"text":"Bot"}',ArmorItems:[{},{},{},{id:"minecraft:netherite_helmet",Count:1b,tag:{Unbreakable:1b}}]}
execute if score temp mck_temp matches 12 run summon sheep ~ ~ ~ {Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Tags:["puppet","temp"],CustomName:'{"text":"Bot"}',ArmorItems:[{},{},{},{id:"minecraft:netherite_helmet",Count:1b,tag:{Unbreakable:1b}}]}



loot replace block 0 0 0 container.0 loot mck:names
data modify storage temp name set value []
data modify storage temp name append from block 0 0 0 Items[0].tag.display.Name

execute if score @s mck_setting1 matches 1 run data modify storage temp name append value '{"text":" ★☆☆","color":"#FFEBB5","bold":false}'
execute if score @s mck_setting1 matches 2 run data modify storage temp name append value '{"text":" ★★☆","color":"#FFEBB5","bold":false}'
execute if score @s mck_setting1 matches 3 run data modify storage temp name append value '{"text":" ★★★","color":"#FFEBB5","bold":false}'

data modify block 0 3 0 front_text.messages[0] set value '{"nbt":"name[]","storage":"temp","interpret":true,"separator":""}'


data modify entity @e[tag=temp,limit=1,sort=nearest] CustomName set from block 0 3 0 front_text.messages[0]




data modify storage temp list set from storage minecraft:databases goods

data remove storage temp list[{data:{group:2b}}]
data remove storage temp list[{data:{group:3b}}]
data remove storage temp list[{data:{group:4b}}]
data remove storage temp list[{data:{group:5b}}]
data remove storage temp list[{data:{group:6b}}]
data remove storage temp list[{data:{group:7b}}]
data remove storage temp list[{data:{group:8b}}]
data remove storage temp list[{data:{group:9b}}]

execute store result score random_loops mck_temp run random value 0..50
execute if score random_loops mck_temp matches 1.. run function mck:bots/random_kart

data modify entity @s HandItems[0].tag.CustomModelData set from storage temp list[0].data.icon.tag.CustomModelData