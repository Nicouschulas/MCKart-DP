tag @s add pcd.me
scoreboard players set #bool pcd.temp 0
scoreboard players add @s pcd.render 1

scoreboard players operation #temp pcd.temp = #frame pcd.temp
scoreboard players operation #temp pcd.temp %= #10 mck_time
execute if score #temp pcd.temp matches 0 if score #frame pcd.temp matches 26.. run spectate
execute if score #temp pcd.temp matches 0 if score #frame pcd.temp matches ..25 run spectate
execute if data storage pcd:temp {temp:{settings:{fadeouttitle:1}}} if score #frame pcd.temp = #title pcd.temp run function pcd:camera/title with storage pcd:temp temp.fadeouttitle