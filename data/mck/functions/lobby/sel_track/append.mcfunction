data modify storage tracks selections append from storage temp sel

execute if score @s mck_super_vote matches 1.. run scoreboard players remove @s mck_super_vote 1
execute if score @s mck_super_vote matches 1.. run function mck:lobby/sel_track/append