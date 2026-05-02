scoreboard players operation in mck_db_bit = @s mck_track  
function mck:database/track_find  

execute if score @s mck_lobby_type matches 0 if data storage databases output.data run function mck:player/stats/public_tracks/normal  
execute if score @s mck_lobby_type matches 1 if data storage databases output.data run function mck:player/stats/public_tracks/ranked