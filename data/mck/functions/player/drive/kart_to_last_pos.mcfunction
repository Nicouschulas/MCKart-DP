ride @p[tag=now] mount @s

data modify entity @s Pos set from storage temp last_pos
data modify entity @s Rotation[0] set from storage temp last_rot
scoreboard players set @s mck_speed -40

execute rotated as @s as @p[tag=now] positioned as @s run tp @s ~ ~ ~ ~ ~
ride @p[tag=now] mount @s