scoreboard players operation id mck_temp = @s mck_id
scoreboard players set count mck_temp 0
execute as @a[scores={mck_status=2,mck_spectate=1..}] if score @s mck_spectate = id mck_temp run scoreboard players add count mck_temp 1

scoreboard players operation @s mck_spectate = count mck_temp
execute if score count mck_temp matches 0 as @e[type=item_display,tag=mck_spectate_entity] if score @s mck_spectate = id mck_temp run function mck:player/spectate/kill