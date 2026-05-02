data modify storage temp pos set from entity @s Pos  
item modify entity @s enderchest.3 minecraft:append_shell_trail  

execute store result score temp mck_temp run data get entity @s EnderItems[3].components.shell_trail  
execute if score temp mck_temp matches 61.. run item replace block 0 0 0 container.0 from entity @s enderchest.3  
execute if score temp mck_temp matches 61.. run data remove block 0 0 0 Items[0].components.shell_trail[0]  
execute if score temp mck_temp matches 61.. run item replace entity @s enderchest.3 from block 0 0 0 container.0