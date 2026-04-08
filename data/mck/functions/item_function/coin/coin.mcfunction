scoreboard players add @s mck_coins 1
# challenge
execute if score @s mck_challenge_level matches 1 if score @s mck_quest1 matches 0.. run scoreboard players add @s mck_quest1 1
execute if score @s mck_challenge_level matches 5 if score @s mck_quest1 matches 0.. run scoreboard players add @s mck_quest1 1
playsound minecraft:entity.player.levelup master @a[scores={mck_setting1=1}] ~ ~ ~ 1 1.8