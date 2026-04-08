scoreboard players set ready mck_temp 0
execute if score @s mck_quest1 matches -2 run scoreboard players add ready mck_temp 1
execute if score @s mck_quest2 matches -2 run scoreboard players add ready mck_temp 1
execute if score @s mck_quest3 matches -2 run scoreboard players add ready mck_temp 1
execute if score @s mck_challenge_level matches 11.. run scoreboard players set ready mck_temp 4


scoreboard players set clear mck_temp 0

execute if score ready mck_temp matches ..2 unless data storage menu inv[{Slot:19b}] run scoreboard players set clear mck_temp 1
execute if score ready mck_temp matches ..2 unless data storage menu inv[{Slot:22b}] run scoreboard players set clear mck_temp 1
execute if score ready mck_temp matches ..2 unless data storage menu inv[{Slot:25b}] run scoreboard players set clear mck_temp 1

execute if score ready mck_temp matches ..2 unless data storage menu inv[{Slot:35b}] run scoreboard players set clear mck_temp 1



execute if score ready mck_temp matches ..2 if score @s mck_quest1 matches 0.. unless data storage menu inv[{Slot:28b}] run scoreboard players set clear mck_temp 2
execute if score ready mck_temp matches ..2 if score @s mck_quest2 matches 0.. unless data storage menu inv[{Slot:31b}] run scoreboard players set clear mck_temp 2
execute if score ready mck_temp matches ..2 if score @s mck_quest3 matches 0.. unless data storage menu inv[{Slot:34b}] run scoreboard players set clear mck_temp 2

execute if score ready mck_temp matches ..2 if score @s mck_quest1 matches -1 unless data storage menu inv[{Slot:28b}] run scoreboard players set clear mck_temp 1
execute if score ready mck_temp matches ..2 if score @s mck_quest1 matches -1 unless data storage menu inv[{Slot:28b}] run function mck:menu/page_challenges/collect_quest
execute if score ready mck_temp matches ..2 if score @s mck_quest1 matches -1 unless data storage menu inv[{Slot:28b}] run scoreboard players set @s mck_quest1 -2
execute if score ready mck_temp matches ..2 if score @s mck_quest2 matches -1 unless data storage menu inv[{Slot:31b}] run scoreboard players set clear mck_temp 1
execute if score ready mck_temp matches ..2 if score @s mck_quest2 matches -1 unless data storage menu inv[{Slot:31b}] run function mck:menu/page_challenges/collect_quest
execute if score ready mck_temp matches ..2 if score @s mck_quest2 matches -1 unless data storage menu inv[{Slot:31b}] run scoreboard players set @s mck_quest2 -2
execute if score ready mck_temp matches ..2 if score @s mck_quest3 matches -1 unless data storage menu inv[{Slot:34b}] run scoreboard players set clear mck_temp 1
execute if score ready mck_temp matches ..2 if score @s mck_quest3 matches -1 unless data storage menu inv[{Slot:34b}] run function mck:menu/page_challenges/collect_quest
execute if score ready mck_temp matches ..2 if score @s mck_quest3 matches -1 unless data storage menu inv[{Slot:34b}] run scoreboard players set @s mck_quest3 -2

execute if score ready mck_temp matches ..2 if score @s mck_quest1 matches -2 unless data storage menu inv[{Slot:28b}] run scoreboard players set clear mck_temp 1
execute if score ready mck_temp matches ..2 if score @s mck_quest2 matches -2 unless data storage menu inv[{Slot:31b}] run scoreboard players set clear mck_temp 1
execute if score ready mck_temp matches ..2 if score @s mck_quest3 matches -2 unless data storage menu inv[{Slot:34b}] run scoreboard players set clear mck_temp 1



execute if score ready mck_temp matches 3 unless data storage menu inv[{Slot:22b}] run scoreboard players set clear mck_temp 1
execute if score ready mck_temp matches 3 unless data storage menu inv[{Slot:31b}] run scoreboard players set clear mck_temp 1
execute if score ready mck_temp matches 3 if score clear mck_temp matches 1 run function mck:player/challenges/upgrade

execute if score ready mck_temp matches 4 unless data storage menu inv[{Slot:22b}] run scoreboard players set clear mck_temp 1
execute if score ready mck_temp matches 4 unless data storage menu inv[{Slot:31b}] run scoreboard players set clear mck_temp 1



execute if score clear mck_temp matches 2 run playsound minecraft:block.note_block.bass master @s[scores={mck_setting1=1}] ~ ~ ~ 2 0.6
execute if score clear mck_temp matches 3.. run playsound ui.button.click master @s[scores={mck_setting1=1}] ~ ~ ~ 0.3 0.9
execute if score clear mck_temp matches 1.. run function mck:menu/draw


execute unless data storage menu inv[{Slot:13b}] unless score @s mck_menudelay matches 1.. run function mck:menu/draw