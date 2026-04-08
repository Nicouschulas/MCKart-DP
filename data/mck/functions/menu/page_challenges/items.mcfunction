function mck:player/challenges/reached


scoreboard players set ready mck_temp 0
execute if score @s mck_quest1 matches -2 run scoreboard players add ready mck_temp 1
execute if score @s mck_quest2 matches -2 run scoreboard players add ready mck_temp 1
execute if score @s mck_quest3 matches -2 run scoreboard players add ready mck_temp 1
execute if score @s mck_challenge_level matches 11.. run scoreboard players set ready mck_temp 4


execute if score ready mck_temp matches ..2 run scoreboard players operation in mck_db_bit = @s mck_id
execute if score ready mck_temp matches ..2 run function mck:database/player_find

execute if score ready mck_temp matches ..2 store result score quest1_goal mck_temp run data get storage databases output.data.stats.challenge_goal1
execute if score ready mck_temp matches ..2 store result score quest2_goal mck_temp run data get storage databases output.data.stats.challenge_goal2
execute if score ready mck_temp matches ..2 store result score quest3_goal mck_temp run data get storage databases output.data.stats.challenge_goal3

execute if score ready mck_temp matches ..2 if score @s mck_quest1 matches 0.. run scoreboard players operation quest1 mck_temp = @s mck_quest1
execute if score ready mck_temp matches ..2 if score @s mck_quest2 matches 0.. run scoreboard players operation quest2 mck_temp = @s mck_quest2
execute if score ready mck_temp matches ..2 if score @s mck_quest3 matches 0.. run scoreboard players operation quest3 mck_temp = @s mck_quest3

execute if score ready mck_temp matches ..2 if score @s mck_quest1 matches ..-1 run scoreboard players operation quest1 mck_temp = quest1_goal mck_temp
execute if score ready mck_temp matches ..2 if score @s mck_quest2 matches ..-1 run scoreboard players operation quest2 mck_temp = quest2_goal mck_temp
execute if score ready mck_temp matches ..2 if score @s mck_quest3 matches ..-1 run scoreboard players operation quest3 mck_temp = quest3_goal mck_temp


execute if score ready mck_temp matches ..2 run function mck:menu/page_challenges/quest1
execute if score ready mck_temp matches ..2 run function mck:menu/page_challenges/quest2
execute if score ready mck_temp matches ..2 run function mck:menu/page_challenges/quest3

execute if score ready mck_temp matches ..2 if score @s mck_challenge_level matches 1 run item replace entity @s inventory.26 with gold_nugget{display:{Name:'{"text":" "}'},CustomModelData:1001,killme:1b}
execute if score ready mck_temp matches ..2 if score @s mck_challenge_level matches 2 run item replace entity @s inventory.26 with gold_nugget{display:{Name:'{"text":" "}'},CustomModelData:1002,killme:1b}
execute if score ready mck_temp matches ..2 if score @s mck_challenge_level matches 3 run item replace entity @s inventory.26 with gold_nugget{display:{Name:'{"text":" "}'},CustomModelData:1003,killme:1b}
execute if score ready mck_temp matches ..2 if score @s mck_challenge_level matches 4 run item replace entity @s inventory.26 with gold_nugget{display:{Name:'{"text":" "}'},CustomModelData:1004,killme:1b}
execute if score ready mck_temp matches ..2 if score @s mck_challenge_level matches 5 run item replace entity @s inventory.26 with gold_nugget{display:{Name:'{"text":" "}'},CustomModelData:1005,killme:1b}
execute if score ready mck_temp matches ..2 if score @s mck_challenge_level matches 6 run item replace entity @s inventory.26 with gold_nugget{display:{Name:'{"text":" "}'},CustomModelData:1006,killme:1b}
execute if score ready mck_temp matches ..2 if score @s mck_challenge_level matches 7 run item replace entity @s inventory.26 with gold_nugget{display:{Name:'{"text":" "}'},CustomModelData:1007,killme:1b}
execute if score ready mck_temp matches ..2 if score @s mck_challenge_level matches 8 run item replace entity @s inventory.26 with gold_nugget{display:{Name:'{"text":" "}'},CustomModelData:1008,killme:1b}
execute if score ready mck_temp matches ..2 if score @s mck_challenge_level matches 9 run item replace entity @s inventory.26 with gold_nugget{display:{Name:'{"text":" "}'},CustomModelData:1009,killme:1b}
execute if score ready mck_temp matches ..2 if score @s mck_challenge_level matches 10 run item replace entity @s inventory.26 with gold_nugget{display:{Name:'{"text":" "}'},CustomModelData:1010,killme:1b}

scoreboard players operation temp mck_temp = @s mck_challenge_level
scoreboard players add temp mck_temp 1
execute if score ready mck_temp matches 3 if score temp mck_temp matches ..10 run item replace entity @s inventory.13 with gold_nugget{display:{Name:'{"translate":"menu.page.challenges.level_challenge","color":"#B5F08D","bold":true,"italic":false}'},CustomModelData:129,killme:1b} 1
execute if score ready mck_temp matches 3 if score temp mck_temp matches ..10 run item modify entity @s inventory.13 mck:set_level_challenge
execute if score ready mck_temp matches 3 if score temp mck_temp matches ..10 run item replace entity @s inventory.22 with carved_pumpkin{display:{Name:'{"translate":"menu.page.challenges.level_challenge","color":"#B5F08D","bold":true,"italic":false}'},menu:1b,killme:1b}
execute if score ready mck_temp matches 3 if score temp mck_temp matches ..10 run item modify entity @s inventory.22 mck:set_level_challenge

execute if score ready mck_temp matches 3 if score temp mck_temp matches 11 run item replace entity @s inventory.13 with gold_nugget{display:{Name:'{"translate":"menu.page.challenges.level_challenge","color":"#B5F08D","bold":true,"italic":false}',Lore:['[{"text":"   10","color":"#998757","bold":false,"italic":false},{"text":" ▶ ","color":"gray","bold":true,"italic":false},{"translate":"menu.page.challenges.complete","color":"#FFE191","bold":true,"italic":false}]']},CustomModelData:129,killme:1b} 1
execute if score ready mck_temp matches 3 if score temp mck_temp matches 11 run item replace entity @s inventory.22 with carved_pumpkin{display:{Name:'{"translate":"menu.page.challenges.level_challenge","color":"#B5F08D","bold":true,"italic":false}',Lore:['[{"text":"   10","color":"#998757","bold":false,"italic":false},{"text":" ▶ ","color":"gray","bold":true,"italic":false},{"translate":"menu.page.challenges.complete","color":"#FFE191","bold":true,"italic":false}]']},menu:1b,killme:1b}

execute if score ready mck_temp matches 4 run item replace entity @p inventory.13 with gold_nugget{display:{Name:'{"translate":"menu.page.challenges.final","color":"#EDD182","bold":true,"italic":false}'},CustomModelData:130,killme:1b} 1
execute if score ready mck_temp matches 4 run item replace entity @s inventory.22 with carved_pumpkin{display:{Name:'{"translate":"menu.page.challenges.final","color":"#EDD182","bold":true,"italic":false}'},menu:1b,killme:1b}


item replace entity @s inventory.4 with gold_nugget{display:{Name:'{"text":" "}'},CustomModelData:10009,killme:1b} 1