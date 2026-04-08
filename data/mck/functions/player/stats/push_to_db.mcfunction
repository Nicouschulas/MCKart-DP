data modify storage temp stats set from entity @s EnderItems[4].tag.stats
data modify storage temp stats.mck_level set from entity @s XpLevel

data modify storage temp list1 set from entity @s EnderItems[4].tag.track_stats
data remove storage temp list2
execute if data storage temp list1[0] run function mck:player/stats/clear_track_recording

scoreboard players operation in mck_db_bit = @s mck_id
function mck:database/player_find
data modify storage databases input set from storage databases output

data modify storage databases input.data.stats set from storage temp stats
data modify storage databases input.data.track_stats set from storage temp list2

function mck:database/player_set