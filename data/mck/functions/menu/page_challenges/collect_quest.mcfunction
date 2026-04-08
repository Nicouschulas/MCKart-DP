scoreboard players set temp mck_temp 10
scoreboard players operation temp mck_temp *= @s mck_challenge_level
scoreboard players operation @s mck_bank += temp mck_temp

tellraw @s [{"text":"[","color":"gray","bold":true},{"translate":"system","color":"gold","bold":false},{"text":"] "},{"translate":"menu.page.challenges.collect1","color":"white","bold":false},{"score":{"name":"temp","objective":"mck_temp"},"color":"#FFDF5E","bold":true},{"translate":"menu.page.challenges.collect2","color":"white","bold":false}]
playsound minecraft:entity.player.levelup master @s[scores={mck_setting1=1}] ~ ~ ~ 1 1