gamemode spectator @s
scoreboard players add #pcd.id pcd.id 1
scoreboard players operation @s pcd.id = #pcd.id pcd.id
scoreboard players operation #temp pcd.temp = @s pcd.id
execute at @s run summon item_display ~ ~ ~ {teleport_duration:0,item_display:"none",Tags:["pcd.camera","pcd.temp"],item:{id:"minecraft:air",Count:1b,tag:{render:[],load:[]}}}
execute at @s as @e[type=item_display,tag=pcd.temp,limit=1,sort=nearest] run function pcd:camera/start