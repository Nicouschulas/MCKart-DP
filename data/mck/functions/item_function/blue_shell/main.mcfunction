execute if data entity @s components.shell_trail[0] run data modify entity @s Pos set from entity @s components.shell_trail[0]
data remove entity @s components.shell_trail[0]
data remove entity @s components.shell_trail[0]
execute at @s run tp @s ~ ~ ~ ~8 ~

scoreboard players add @s mck_timer 1
scoreboard players operation temp mck_temp = @s mck_timer
scoreboard players operation temp mck_temp %= #10 wasd.constant
execute if score temp mck_temp matches ..4 run execute at @s run playsound minecraft:block.note_block.flute master @a[scores={mck_setting1=1}] ~ ~ ~ 0.6 0.667420
execute if score temp mck_temp matches 5.. run execute at @s run playsound minecraft:block.note_block.flute master @a[scores={mck_setting1=1}] ~ ~ ~ 0.6 0.943874

execute unless data entity @s components.shell_trail[0] run playsound minecraft:entity.generic.explode master @a[scores={mck_setting1=1}] ~ ~ ~ 2 0.7
execute unless data entity @s components.shell_trail[0] run particle minecraft:dust{color:[255,0,0],scale:1.0} ~ ~ ~ 0 0 0 1 1
execute unless data entity @s components.shell_trail[0] run kill @s