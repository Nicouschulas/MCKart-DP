execute if score @s mck_challenge_level matches 1 if score @s mck_quest1 matches 0.. run scoreboard players add @s mck_quest1 1
execute if score @s mck_challenge_level matches 5 if score @s mck_quest1 matches 0.. run scoreboard players add @s mck_quest1 1
execute if score @s mck_challenge_level matches 9 if score @s mck_quest2 matches 0.. run scoreboard players set @s mck_quest_temp 1

scoreboard players add coins_collected mck_community 1