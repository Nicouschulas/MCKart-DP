data modify storage temp pos set from entity @s Pos
item modify entity @s weapon.mainhand mck:append_shell_trail

execute store result score temp mck_temp run data get entity @s HandItems[0].tag.shell_trail
execute if score temp mck_temp matches 61.. run data remove entity @s HandItems[0].tag.shell_trail[0]