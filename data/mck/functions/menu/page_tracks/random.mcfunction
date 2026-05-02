data modify storage temp cups set value [[{temp:true}]]
data modify storage temp cups[0][0].components display.Name set value '{"translate":"track.random","color":"#FFCEBD","bold":true,"italic":false}'
item modify entity @s enderchest.0 components minecraft:select_track
scoreboard players set @s mck_sel_track -1

playsound minecraft:entity.player.levelup master @s[scores={mck_setting1=1}] ~ ~ ~ 1 1.2
tellraw @s [{"text":"[","color":"gray","bold":true},{"translate":"system","color":"gold","bold":false},{"text":"] "},{"translate":"system.selected.track","color":"white","bold":true},{"nbt":"cups[0][0].components.display.Name","storage":"temp","interpret":true}]