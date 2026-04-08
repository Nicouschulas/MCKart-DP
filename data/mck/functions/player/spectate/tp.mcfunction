scoreboard players operation id mck_temp = @s mck_spectate
scoreboard players set bool mck_temp 0
execute as @a[scores={mck_status=1,mck_lobby_status=2,mck_spectate=1..}] if score @s mck_id = id mck_temp run function mck:player/spectate/connect_target
execute at @a[tag=temp,limit=1] positioned ~ ~2.5 ~ rotated ~ 0 run tp @s ^ ^ ^-2.4 facing entity @a[tag=temp,limit=1] eyes

tag @a[tag=temp] remove temp


tag @s add temp
execute as @a[scores={mck_status=2,mck_spectate=1..}] if score @s mck_spectate = id mck_temp run function mck:player/spectate/spectator
tag @s remove temp

execute if score bool mck_temp matches 0 run kill @s