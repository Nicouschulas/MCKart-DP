item replace block 0 0 0 container.0 from entity @s enderchest.3
data modify block 0 0 0 Items[0].components.checkpoints set from storage temp checkpoints

data modify block 0 0 0 Items[0].components.last_pos set from storage temp last_pos
data modify block 0 0 0 Items[0].components.last_rot set from storage temp last_rot
data modify block 0 0 0 Items[0].components.modes set from storage temp modes

scoreboard players operation @s mck_race_ax = ax mck_temp
scoreboard players operation @s mck_race_ay = ay mck_temp
scoreboard players operation @s mck_race_az = az mck_temp
scoreboard players operation @s mck_race_bx = bx mck_temp
scoreboard players operation @s mck_race_by = by mck_temp
scoreboard players operation @s mck_race_bz = bz mck_temp

item replace entity @s enderchest.3 from block 0 0 0 container.0
execute on vehicle rotated as @s on passengers if entity @s[type=player] positioned as @s run tp @s ~ ~ ~ ~ ~