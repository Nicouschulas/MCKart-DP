scoreboard players set #counter pcd.temp 0
function pcd:render/loop

execute store result bossbar pcd.render value run scoreboard players get #t pcd.math
bossbar set pcd.render name [{"text":"Rendering frame: ","color":"#EBEBEB","bold":false,"italic":false},{"score":{"name":"#t","objective":"pcd.math"},"color":"gold","bold":true,"italic":false},{"text":"/","color":"#EBEBEB","bold":true,"italic":false},{"score":{"name":"#t_max","objective":"pcd.math"},"color":"#EEAC6B","bold":false,"italic":false}]

execute if score #t pcd.math < #t_max pcd.math run schedule function pcd:render/thread 1t
execute unless score #t pcd.math < #t_max pcd.math run bossbar set pcd.render players
execute unless score #t pcd.math < #t_max pcd.math run tellraw @a[scores={pcd.enable=1}] {"text":"Finished render!","color":"gold","bold":true,"italic":false}