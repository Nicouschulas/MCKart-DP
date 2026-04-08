execute store result score temp1 mck_temp run data get storage tracks data
data modify storage temp tracks set from storage tracks data
scoreboard players set bool mck_temp 0
data remove storage temp sel_track
function mck:track/rotate_0