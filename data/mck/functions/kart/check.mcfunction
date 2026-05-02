scoreboard players set bool mck_temp 0  
scoreboard players operation temp mck_temp = @s mck_id  
execute as @a[scores={mck_status=1}] if score @s mck_id = temp mck_temp run scoreboard players set bool mck_temp 1  
execute if score bool mck_temp matches 0 run function mck:kart/kill