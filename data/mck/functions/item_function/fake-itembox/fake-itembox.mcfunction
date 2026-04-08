playsound minecraft:block.stone.place master @s[scores={mck_setting1=1}] ~ ~ ~ 1 1.8


scoreboard players operation temp mck_temp = @s mck_race
scoreboard players operation temp2 mck_temp = @s mck_lobby

execute if entity @s[tag=!bot] on vehicle at @s run function mck:item_function/fake-itembox/summon
execute if entity @s[tag=bot] run function mck:item_function/fake-itembox/summon