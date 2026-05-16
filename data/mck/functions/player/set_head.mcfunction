item replace block 0 0 0 container.0 with player_head
item modify block 0 0 0 container.0 mck:set_playerhead
item modify block 0 0 0 container.0 mck:set_playerhead
item replace entity @s enderchest.1 from block 0 0 0 container.0
scoreboard players operation in mck_db_bit = @s mck_id
function mck:database/player_find
data modify storage databases output.data.id set from entity @s EnderItems[0].components."minecraft:custom_data".playerdata.id
data modify storage databases output.data.name set from entity @s EnderItems[0].components."minecraft:custom_data".playerdata.name
data modify storage databases output.data.head set from entity @s EnderItems[1]
data modify storage databases input set from storage databases output
function mck:database/player_set