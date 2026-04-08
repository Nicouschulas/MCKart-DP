execute store result score checkpoints mck_temp run data get storage bob checkpoints
execute if score checkpoints mck_temp matches 3 run data modify storage bob checkpoint append from entity @s Rotation[0]
execute if score checkpoints mck_temp matches 3 run data modify storage bob checkpoint append from entity @s Rotation[0]
execute if score checkpoints mck_temp matches 3 run data modify storage bob checkpoint append from entity @s Rotation[0]
execute if score checkpoints mck_temp matches 3 run data modify storage bob checkpoints append from storage bob checkpoint
execute if score checkpoints mck_temp matches 3 run data remove storage bob checkpoint
execute if score checkpoints mck_temp matches 3 run data modify storage bob data.checkpoints append from storage bob checkpoints
execute if score checkpoints mck_temp matches 3 run data remove storage bob checkpoints

execute unless data entity @s {Inventory:[{Slot:9b,tag:{CustomModelData:-7201}}]} run function mck:player/bob/reset_track_data

execute unless data entity @s {Inventory:[{Slot:10b,tag:{CustomModelData:-7204}}]} run data modify storage bob data.checkpoints set value []
execute unless data entity @s {Inventory:[{Slot:10b,tag:{CustomModelData:-7204}}]} run clear @s respawn_anchor{CustomModelData:-7204}
execute unless data entity @s {Inventory:[{Slot:11b,tag:{CustomModelData:-7205}}]} run data modify storage bob data.coins set value []
execute unless data entity @s {Inventory:[{Slot:11b,tag:{CustomModelData:-7205}}]} run clear @s gold_nugget{CustomModelData:-7205}
execute unless data entity @s {Inventory:[{Slot:12b,tag:{CustomModelData:-7206}}]} run data modify storage bob data.items set value []
execute unless data entity @s {Inventory:[{Slot:12b,tag:{CustomModelData:-7206}}]} run clear @s chest{CustomModelData:-7206}
execute unless data entity @s {Inventory:[{Slot:13b,tag:{CustomModelData:-7211}}]} run data modify storage bob data.startpos set value []
execute unless data entity @s {Inventory:[{Slot:13b,tag:{CustomModelData:-7211}}]} run clear @s red_bed{CustomModelData:-7211}

execute unless data entity @s {Inventory:[{Slot:16b,tag:{CustomModelData:-7202}}]} run function mck:player/bob/set_icon
execute unless data entity @s {Inventory:[{Slot:15b,tag:{CustomModelData:-7203}}]} run function mck:player/bob/set_data

execute unless data entity @s {Inventory:[{Slot:19b,tag:{CustomModelData:-7300}}]} run scoreboard players operation #place_checkpoints mck_temp *= #-1 wasd.constant

execute unless data entity @s {Inventory:[{Slot:26b,tag:{CustomModelData:-7212}}]} run function mck:player/bob/load

execute unless data entity @s {Inventory:[{Slot:27b,tag:{CustomModelData:-7212}}]} run data modify storage bob data.modes append value 0
execute unless data entity @s {Inventory:[{Slot:28b,tag:{CustomModelData:-7212}}]} run data modify storage bob data.modes append value 1
execute unless data entity @s {Inventory:[{Slot:29b,tag:{CustomModelData:-7212}}]} run data modify storage bob data.modes append value 2


execute unless data entity @s {Inventory:[{Slot:23b,tag:{CustomModelData:-7212}}]} run data modify storage temp pos set from entity @s Pos
execute unless data entity @s {Inventory:[{Slot:23b,tag:{CustomModelData:-7212}}]} run data modify storage temp bot_checkpoint.range set value 0b
execute unless data entity @s {Inventory:[{Slot:23b,tag:{CustomModelData:-7212}}]} run data modify storage temp bot_checkpoint.pos set from storage temp pos
execute unless data entity @s {Inventory:[{Slot:23b,tag:{CustomModelData:-7212}}]} run data modify storage bob data.bot_checkpoints append from storage temp bot_checkpoint

execute unless data entity @s {Inventory:[{Slot:24b,tag:{CustomModelData:-7212}}]} run data modify storage temp pos set from entity @s Pos
execute unless data entity @s {Inventory:[{Slot:24b,tag:{CustomModelData:-7212}}]} run data modify storage temp bot_checkpoint.range set value 1b
execute unless data entity @s {Inventory:[{Slot:24b,tag:{CustomModelData:-7212}}]} run data modify storage temp bot_checkpoint.pos set from storage temp pos
execute unless data entity @s {Inventory:[{Slot:24b,tag:{CustomModelData:-7212}}]} run data modify storage bob data.bot_checkpoints append from storage temp bot_checkpoint

execute unless data entity @s {Inventory:[{Slot:32b,tag:{CustomModelData:-7212}}]} run data modify storage temp pos set from entity @s Pos
execute unless data entity @s {Inventory:[{Slot:32b,tag:{CustomModelData:-7212}}]} run data modify storage temp bot_checkpoint.range set value 3b
execute unless data entity @s {Inventory:[{Slot:32b,tag:{CustomModelData:-7212}}]} run data modify storage temp bot_checkpoint.pos set from storage temp pos
execute unless data entity @s {Inventory:[{Slot:32b,tag:{CustomModelData:-7212}}]} run data modify storage bob data.bot_checkpoints append from storage temp bot_checkpoint

execute unless data entity @s {Inventory:[{Slot:33b,tag:{CustomModelData:-7212}}]} run data modify storage temp pos set from entity @s Pos
execute unless data entity @s {Inventory:[{Slot:33b,tag:{CustomModelData:-7212}}]} run data modify storage temp bot_checkpoint.range set value 6b
execute unless data entity @s {Inventory:[{Slot:33b,tag:{CustomModelData:-7212}}]} run data modify storage temp bot_checkpoint.pos set from storage temp pos
execute unless data entity @s {Inventory:[{Slot:33b,tag:{CustomModelData:-7212}}]} run data modify storage bob data.bot_checkpoints append from storage temp bot_checkpoint


execute unless data entity @s {Inventory:[{Slot:34b,tag:{CustomModelData:-7212}}]} run data modify storage bob data.bot_checkpoints set value []

execute unless data entity @s {Inventory:[{Slot:35b,tag:{CustomModelData:-7212}}]} run data modify storage bob data.modes set value []

execute if score @s mck_use matches 1.. run function mck:player/bob/item_used

function mck:player/bob/set_items

execute if score bob_show_points mck_temp matches 0 run function mck:player/bob/show_points/main