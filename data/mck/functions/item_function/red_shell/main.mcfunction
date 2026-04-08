execute if data entity @s item.tag.shell_trail[0] run data modify entity @s Pos set from entity @s item.tag.shell_trail[0]
data remove entity @s item.tag.shell_trail[0]
data remove entity @s item.tag.shell_trail[0]
execute at @s run tp @s ~ ~ ~ ~8 ~


execute at @s run playsound minecraft:block.note_block.flute master @a[scores={mck_setting1=1}] ~ ~ ~ 0.5 0.943874

execute unless data entity @s item.tag.shell_trail[0] run playsound minecraft:entity.generic.explode master @a[scores={mck_setting1=1}] ~ ~ ~ 2 0.7
execute unless data entity @s item.tag.shell_trail[0] run particle minecraft:explosion ~ ~ ~ 0 0 0 1 1
execute unless data entity @s item.tag.shell_trail[0] run kill @s