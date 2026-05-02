scoreboard players remove slot mck_temp 17

scoreboard players operation temp mck_temp = @s mck_tracks_page
scoreboard players remove temp mck_temp 1
data modify storage temp cups set from storage tracks data
function mck:menu/page_tracks/get_cup
data remove storage temp cup
data modify storage temp cup set from storage temp cups[0][0].tag.display.Name
data remove storage temp cups[0][0]
execute store result score tracks mck_temp run data get storage temp cups[0]

execute if score slot mck_temp <= tracks mck_temp run scoreboard players operation temp2 mck_temp = slot mck_temp
execute if score slot mck_temp <= tracks mck_temp run function mck:menu/page_tracks/get_track

scoreboard players set bool mck_temp 0

execute if score slot mck_temp <= tracks mck_temp run data remove storage temp list
execute if score slot mck_temp <= tracks mck_temp run data modify storage temp list append from storage temp cups[0][0].tag.data.id
execute if score slot mck_temp <= tracks mck_temp run data remove storage temp tracks

execute if score slot mck_temp <= tracks mck_temp run function mck:lobby/sel_track/check_used
execute if score slot mck_temp <= tracks mck_temp if data storage temp tracks[0] run scoreboard players set bool mck_temp 1

execute unless data storage temp tracks[0] run playsound minecraft:block.note_block.bass master @s[scores={mck_setting1=1}] ~ ~ ~ 2 0.6
execute unless data storage temp tracks[0] run tellraw @s [{"text":"[","color":"gray","bold":true},{"translate":"system","color":"gold","bold":false},{"text":"] "},{"translate":"menu.page.tracks.trackused","color":"red","bold":false}]

execute if score bool mck_temp matches 1 store result score @s mck_sel_track run data get storage temp cups[0][0].tag.display.Name
execute if score bool mck_temp matches 1 run item modify entity @s enderchest.0 minecraft:select_track
execute if score bool mck_temp matches 1 run playsound minecraft:entity.player.levelup master @s[scores={mck_setting1=1}] ~ ~ ~ 1 1.2
execute if score bool mck_temp matches 1 run tellraw @s [{"text":"[","color":"gray","bold":true},{"translate":"system","color":"gold","bold":false},{"text":"] "},{"translate":"system.selected.track","color":"white","bold":true},{"nbt":"cups[0][0].tag.display.Name","storage":"temp","interpret":true}]