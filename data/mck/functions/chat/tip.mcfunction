scoreboard players add tip_id mck_data 1
# MAX TIP COUNT + 1
execute if score tip_id mck_data matches 13.. run scoreboard players set tip_id mck_data 1

execute store result storage temp args.id int 1 run scoreboard players get tip_id mck_data
function mck:chat/tip_m with storage temp args