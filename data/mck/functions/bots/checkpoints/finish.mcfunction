data modify storage temp place set value '{"text":"\\uab12    "}'
execute if score @s mck_place matches 1 run data modify storage temp place set value '{"text":"\\uabc1"}'
execute if score @s mck_place matches 2 run data modify storage temp place set value '{"text":"\\uabc2"}'
execute if score @s mck_place matches 3 run data modify storage temp place set value '{"text":"\\uabc3"}'
execute if score @s mck_place matches 4 run data modify storage temp place set value '{"text":"\\uabc4"}'
execute if score @s mck_place matches 5 run data modify storage temp place set value '{"text":"\\uabc5"}'
execute if score @s mck_place matches 6 run data modify storage temp place set value '{"text":"\\uabc6"}'
execute if score @s mck_place matches 7 run data modify storage temp place set value '{"text":"\\uabc7"}'
execute if score @s mck_place matches 8 run data modify storage temp place set value '{"text":"\\uabc8"}'
execute if score @s mck_place matches 9 run data modify storage temp place set value '{"text":"\\uabc9"}'
execute if score @s mck_place matches 10 run data modify storage temp place set value '{"text":"\\uab10"}'
execute if score @s mck_place matches 11 run data modify storage temp place set value '{"text":"\\uab11"}'
execute if score @s mck_place matches 12 run data modify storage temp place set value '{"text":"\\uab12"}'
execute on passengers if entity @s[tag=puppet] run data modify storage temp name set from entity @s CustomName

scoreboard players operation temp mck_temp = @s mck_lobby
scoreboard players operation temp2 mck_temp = @s mck_track
scoreboard players set bool mck_temp 1
execute as @e[scores={mck_lobby_status=2}] if score @s mck_lobby = temp mck_temp run scoreboard players add @s mck_place_pre 1
execute as @a[scores={mck_status=1..}] if score @s mck_track = temp2 mck_temp run function mck:player/lobby_status_2/finish_chat
scoreboard players set @s mck_lobby_status 3
scoreboard players set @s mck_finish_anim 80