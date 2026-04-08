execute store result score temp mck_temp run data get storage temp list[0].data.icon.tag.CustomModelData
scoreboard players set bool mck_temp 0

execute if score @s mck_player_menu matches 1 if score temp mck_temp = @s mck_kart_model run scoreboard players set bool mck_temp 1
execute if score @s mck_player_menu matches 3 if score temp mck_temp = @s mck_handheld_model run scoreboard players set bool mck_temp 1
execute if score @s mck_player_menu matches 4 if score temp mck_temp = @s mck_hat_model run scoreboard players set bool mck_temp 1
execute if score @s mck_player_menu matches 5 if score temp mck_temp = @s mck_audio_pack run scoreboard players set bool mck_temp 1
execute if score @s mck_player_menu matches 6 if score temp mck_temp = @s mck_glider_model run scoreboard players set bool mck_temp 1
execute if score @s mck_player_menu matches 7 if score temp mck_temp = @s mck_trail run scoreboard players set bool mck_temp 1


execute if score bool mck_temp matches 1 run item modify block 0 0 0 container.0 mck:cosmetics/selected