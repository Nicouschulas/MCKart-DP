scoreboard players operation old1 mck_temp = @s mck_quest1
scoreboard players operation old2 mck_temp = @s mck_quest2
scoreboard players operation old3 mck_temp = @s mck_quest3

# level 1
execute if score @s mck_challenge_level matches 1 if score @s mck_quest1 matches 50.. run scoreboard players set @s mck_quest1 -1
execute if score @s mck_challenge_level matches 1 if score @s mck_quest2 matches 1.. run scoreboard players set @s mck_quest2 -1
execute if score @s mck_challenge_level matches 1 if score @s mck_quest3 matches 1.. run scoreboard players set @s mck_quest3 -1

# level 2
execute if score @s mck_challenge_level matches 2 if score @s mck_quest1 matches 1.. run scoreboard players set @s mck_quest1 -1
execute if score @s mck_challenge_level matches 2 if score @s mck_quest2 matches 50.. run scoreboard players set @s mck_quest2 -1
execute if score @s mck_challenge_level matches 2 if score @s mck_quest3 matches 4.. run scoreboard players set @s mck_quest3 -1

# level 3
execute if score @s mck_challenge_level matches 3 if score @s mck_quest1 matches 1.. run scoreboard players set @s mck_quest1 -1
execute if score @s mck_challenge_level matches 3 if score @s mck_quest2 matches 15.. run scoreboard players set @s mck_quest2 -1
execute if score @s mck_challenge_level matches 3 if score @s mck_quest3 matches 10.. run scoreboard players set @s mck_quest3 -1

# level 4
execute if score @s mck_challenge_level matches 4 if score @s mck_quest1 matches 1.. run scoreboard players set @s mck_quest1 -1
execute if score @s mck_challenge_level matches 4 if score @s mck_quest2 matches 5.. run scoreboard players set @s mck_quest2 -1
execute if score @s mck_challenge_level matches 4 if score @s mck_quest3 matches 1.. run scoreboard players set @s mck_quest3 -1

# level 5
execute if score @s mck_challenge_level matches 5 if score @s mck_quest1 matches 500.. run scoreboard players set @s mck_quest1 -1
execute if score @s mck_challenge_level matches 5 if score @s mck_quest2 matches 1.. run scoreboard players set @s mck_quest2 -1
execute if score @s mck_challenge_level matches 5 if score @s mck_quest3 matches 20.. run scoreboard players set @s mck_quest3 -1

# level 6
execute if score @s mck_challenge_level matches 6 if score @s mck_quest1 matches 20.. run scoreboard players set @s mck_quest1 -1
execute if score @s mck_challenge_level matches 6 if score @s mck_quest2 matches 20.. run scoreboard players set @s mck_quest2 -1
execute if score @s mck_challenge_level matches 6 if score @s mck_quest3 matches 15.. run scoreboard players set @s mck_quest3 -1

# level 7
execute if score @s mck_challenge_level matches 7 if score @s mck_quest1 matches 20.. run scoreboard players set @s mck_quest1 -1
execute if score @s mck_challenge_level matches 7 if score @s mck_quest2 matches 25.. run scoreboard players set @s mck_quest2 -1
execute if score @s mck_challenge_level matches 7 if score @s mck_quest3 matches 1.. run scoreboard players set @s mck_quest3 -1

# level 8
execute if score @s mck_challenge_level matches 8 if score @s mck_quest1 matches 20.. run scoreboard players set @s mck_quest1 -1
execute if score @s mck_challenge_level matches 8 if score @s mck_quest2 matches 1.. run scoreboard players set @s mck_quest2 -1
execute if score @s mck_challenge_level matches 8 if score @s mck_quest3 matches 10.. run scoreboard players set @s mck_quest3 -1

# level 9
execute if score @s mck_challenge_level matches 9 if score @s mck_quest1 matches 30.. run scoreboard players set @s mck_quest1 -1
execute if score @s mck_challenge_level matches 9 if score @s mck_quest2 matches 1.. run scoreboard players set @s mck_quest2 -1
execute if score @s mck_challenge_level matches 9 if score @s mck_quest3 matches 10.. run scoreboard players set @s mck_quest3 -1

# level 10
execute if score @s mck_challenge_level matches 10 if score @s mck_quest1 matches 1.. run scoreboard players set @s mck_quest1 -1
execute if score @s mck_challenge_level matches 10 if score @s mck_quest2 matches 1.. run scoreboard players set @s mck_quest2 -1
execute if score @s mck_challenge_level matches 10 if score @s mck_quest3 matches 1.. run scoreboard players set @s mck_quest3 -1

scoreboard players set new_completed mck_temp 0
execute unless score @s mck_quest1 = old1 mck_temp run scoreboard players add new_completed mck_temp 1
execute unless score @s mck_quest2 = old2 mck_temp run scoreboard players add new_completed mck_temp 1
execute unless score @s mck_quest3 = old3 mck_temp run scoreboard players add new_completed mck_temp 1

execute if score new_completed mck_temp matches 1.. run tellraw @s [{"text":"[","color":"gray","bold":true},{"translate":"info","color":"#57DDFF","bold":false},{"text":"] "},{"translate":"chat.alert.challenge.quest","color":"#D2FFAB","bold":false}]
execute if score new_completed mck_temp matches 2.. run tellraw @s [{"text":"[","color":"gray","bold":true},{"translate":"info","color":"#57DDFF","bold":false},{"text":"] "},{"translate":"chat.alert.challenge.quest","color":"#D2FFAB","bold":false}]
execute if score new_completed mck_temp matches 3.. run tellraw @s [{"text":"[","color":"gray","bold":true},{"translate":"info","color":"#57DDFF","bold":false},{"text":"] "},{"translate":"chat.alert.challenge.quest","color":"#D2FFAB","bold":false}]
execute if score new_completed mck_temp matches 1.. run playsound minecraft:entity.experience_orb.pickup master @s[scores={mck_setting1=1}] ~ ~ ~ 0.5 1.2 0.5