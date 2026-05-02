data modify storage pcd:workspace data.render set value []
data remove storage pcd:temp inter_points
data remove storage pcd:temp process_points
execute store result score #t_max pcd.math run data get storage pcd:workspace data.settings.length
scoreboard players operation #t_max pcd.math /= #length_divide pcd.settings
scoreboard players set #t pcd.math 0

data modify storage pcd:temp render_points set from storage pcd:workspace data.workspace

bossbar set pcd.render value 0
execute store result bossbar pcd.render max run scoreboard players get #t_max pcd.math

schedule clear pcd:render/thread

execute unless data storage pcd:temp render_points[1] components:run tellraw @s {"text":"Need a second point for rendering a camera path!","color":"#FF6969","bold":false,"italic":false}
execute unless data storage pcd:temp render_points[1] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.4 1

execute if score #t_max pcd.math matches ..0 components:run tellraw @s {"text":"Set a higher time for the camera path!","color":"#FF6969","bold":false,"italic":false}
execute if score #t_max pcd.math matches ..0 at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.4 1
execute if score #t_max pcd.math matches ..0 components:run data remove storage pcd:temp render_points

execute if data storage pcd:temp render_points[1] components:run bossbar set pcd.render players @a[scores={pcd.enable=1}]
execute if data storage pcd:temp render_points[1] components:run function pcd:render/thread