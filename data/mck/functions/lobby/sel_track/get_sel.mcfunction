data modify storage tracks selections set value []
execute as @a[scores={mck_lobby=1..}] if score @s mck_lobby matches lobbyid.. mck_temp run function mck:lobby/sel_track/add_to_list