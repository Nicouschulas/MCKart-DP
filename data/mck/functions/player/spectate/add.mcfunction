execute unless score @s mck_spectate matches 1.. at @s run summon item_display ~ ~ ~ {Tags:["mck_spectate_entity","temp"],teleport_duration:5}
execute unless score @s mck_spectate matches 1.. as @e[type=item_display,tag=temp,limit=1,sort=nearest] run function mck:player/spectate/set_scores
data modify storage temp temp set from entity @s EnderItems[2].tag.data.music
scoreboard players add @s mck_spectate 1