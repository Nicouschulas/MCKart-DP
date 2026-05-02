scoreboard players operation temp mck_temp = @s mck_region  
scoreboard players set @s mck_region 18  

execute if block ~ 25 ~ deepslate_gold_ore run scoreboard players set @s mck_region 1  
execute if block ~ 25 ~ deepslate_iron_ore run scoreboard players set @s mck_region 2  
execute if block ~ 25 ~ hay_block run scoreboard players set @s mck_region 3  
execute if block ~ 25 ~ end_stone run scoreboard players set @s mck_region 4  
execute if block ~ 25 ~ obsidian run scoreboard players set @s mck_region 5  
execute if block ~ 25 ~ copper_ore run scoreboard players set @s mck_region 6  
execute if block ~ 25 ~ deepslate_diamond_ore run scoreboard players set @s mck_region 7  
execute if score @s mck_region matches 6 if score @s mck_lobby_status matches 1.. run scoreboard players set @s mck_region 7  
execute if block ~ 25 ~ dried_kelp_block run scoreboard players set @s mck_region 8  
execute if block ~ 25 ~ nether_quartz_ore run scoreboard players set @s mck_region 9  
execute if block ~ 25 ~ deepslate_emerald_ore run scoreboard players set @s mck_region 10  
execute if block ~ 25 ~ amethyst_block run scoreboard players set @s mck_region 11  
execute if block ~ 25 ~ honeycomb_block run scoreboard players set @s mck_region 12  
execute if block ~ 25 ~ deepslate_coal_ore run scoreboard players set @s mck_region 13  
execute if block ~ 25 ~ deepslate_lapis_ore run scoreboard players set @s mck_region 14  
execute if block ~ 25 ~ slime_block run scoreboard players set @s mck_region 15  
execute if block ~ 25 ~ gray_concrete run scoreboard players set @s mck_region 16  
execute if block ~ 25 ~ barrier run scoreboard players set @s mck_region 17  

execute if entity @s[x=-4000425,dx=1000,y=1,dy=300,z=-562,dz=1000] run scoreboard players set @s mck_region 19  
execute if score @s mck_region matches 19 run effect give @s minecraft:speed 15 30 true  

execute if score temp mck_temp matches 19 unless score @s mck_region matches 19 run function mck:player/show_menu  

execute if score @s mck_parkour matches 1.. unless score @s mck_region matches 15 run scoreboard players reset @s mck_parkour