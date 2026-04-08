execute if score @s mck_setting2 matches 0 run scoreboard players set bool mck_temp 1
execute if score @s mck_setting2 matches 1 run scoreboard players set bool mck_temp 0
execute if score bool mck_temp matches 1 run scoreboard players set @s mck_setting2 1
execute if score bool mck_temp matches 0 run scoreboard players set @s mck_setting2 0

scoreboard players operation in mck_db_bit = @s mck_id
function mck:database/player_find

execute if data storage databases output.data run function mck:menu/page_settings/to_database