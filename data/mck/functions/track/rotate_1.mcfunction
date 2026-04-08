execute store result score temp3 mck_temp run data get storage temp tracks[0][0].tag.data.id
execute if score temp3 mck_temp = sel_track mck_sel_track run data modify storage temp sel_track set from storage temp tracks[0][0]
execute if score temp3 mck_temp = sel_track mck_sel_track run scoreboard players set bool mck_temp 1
execute if score temp2 mck_temp matches 1.. if score bool mck_temp matches 0 run data remove storage temp tracks[0][0]
scoreboard players remove temp2 mck_temp 1
execute if score temp2 mck_temp matches 1.. if score bool mck_temp matches 0 run function mck:track/rotate_1