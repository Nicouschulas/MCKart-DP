scoreboard players add temp mck_temp 1
execute if score tracks mck_temp matches 1.. run item replace block 0 0 0 container.0 with paper
execute if score tracks mck_temp matches 1.. run data modify block 0 0 0 Items[0].id set from storage temp cups[0][0].tag.data.icon.id
execute if score tracks mck_temp matches 1.. run data modify block 0 0 0 Items[0].tag set from storage temp cups[0][0].tag.data.icon.tag
execute if score tracks mck_temp matches 1.. run data modify block 0 0 0 Items[0].tag.data.id set from storage temp cups[0][0].tag.data.id
execute if score tracks mck_temp matches 1.. run data modify block 0 0 0 Items[0].tag.menu set value 1b
execute if score tracks mck_temp matches 1.. run data modify block 0 0 0 Items[0].tag.killme set value 1b


execute if score tracks mck_temp matches 1.. run data remove storage temp list
execute if score tracks mck_temp matches 1.. run data modify storage temp list append from storage temp cups[0][0].tag.data.id
execute if score tracks mck_temp matches 1.. run data remove storage temp tracks

execute if score tracks mck_temp matches 1.. run function mck:lobby/sel_track/check_used

execute if score tracks mck_temp matches 1.. unless data storage temp tracks[0] run data modify block 0 0 0 Items[0].tag.Enchantments append value {}
execute if score tracks mck_temp matches 1.. unless data storage temp tracks[0] run item modify block 0 0 0 container.0 mck:track_used


execute if score tracks mck_temp matches 1.. run function mck:menu/page_tracks/track_stats

execute if score tracks mck_temp matches 1.. run data modify storage temp name set value []
execute if score tracks mck_temp matches 1.. run data modify storage temp name append from block 0 0 0 Items[0].tag.display.Name
execute if score tracks mck_temp matches 1.. if score in mck_db_bit matches 1 run data modify storage temp name append value '{"text":" ☠◆◆","color":"#FFEBB5","bold":false}'
execute if score tracks mck_temp matches 1.. if score in mck_db_bit matches 2 run data modify storage temp name append value '{"text":" ☠☠☠","color":"#FFEBB5","bold":false}'
execute if score tracks mck_temp matches 1.. if score in mck_db_bit matches 3 run data modify storage temp name append value '{"text":" ☠◆◆","color":"#FFEBB5","bold":false}'
execute if score tracks mck_temp matches 1.. if score in mck_db_bit matches 4 run data modify storage temp name append value '{"text":" ☠☠◆","color":"#FFEBB5","bold":false}'
execute if score tracks mck_temp matches 1.. if score in mck_db_bit matches 5 run data modify storage temp name append value '{"text":" ☠◆◆","color":"#FFEBB5","bold":false}'
execute if score tracks mck_temp matches 1.. if score in mck_db_bit matches 6 run data modify storage temp name append value '{"text":" ☠☠◆","color":"#FFEBB5","bold":false}'
execute if score tracks mck_temp matches 1.. if score in mck_db_bit matches 7 run data modify storage temp name append value '{"text":" ☠◆◆","color":"#FFEBB5","bold":false}'
execute if score tracks mck_temp matches 1.. if score in mck_db_bit matches 8 run data modify storage temp name append value '{"text":" ☠◆◆","color":"#FFEBB5","bold":false}'
execute if score tracks mck_temp matches 1.. if score in mck_db_bit matches 9 run data modify storage temp name append value '{"text":" ☠☠◆","color":"#FFEBB5","bold":false}'
execute if score tracks mck_temp matches 1.. run item modify block 0 0 0 container.0 mck:set_track_name


execute if score tracks mck_temp matches 1.. if score temp mck_temp matches 1 run item replace entity @s inventory.9 from block 0 0 0 container.0
execute if score tracks mck_temp matches 1.. if score temp mck_temp matches 2 run item replace entity @s inventory.10 from block 0 0 0 container.0
execute if score tracks mck_temp matches 1.. if score temp mck_temp matches 3 run item replace entity @s inventory.11 from block 0 0 0 container.0
execute if score tracks mck_temp matches 1.. if score temp mck_temp matches 4 run item replace entity @s inventory.12 from block 0 0 0 container.0
execute if score tracks mck_temp matches 1.. if score temp mck_temp matches 5 run item replace entity @s inventory.13 from block 0 0 0 container.0
execute if score tracks mck_temp matches 1.. if score temp mck_temp matches 6 run item replace entity @s inventory.14 from block 0 0 0 container.0
execute if score tracks mck_temp matches 1.. if score temp mck_temp matches 7 run item replace entity @s inventory.15 from block 0 0 0 container.0
execute if score tracks mck_temp matches 1.. if score temp mck_temp matches 8 run item replace entity @s inventory.16 from block 0 0 0 container.0
execute if score tracks mck_temp matches 1.. if score temp mck_temp matches 9 run item replace entity @s inventory.17 from block 0 0 0 container.0


execute if score tracks mck_temp matches 1.. run data remove storage temp cups[0][0]
execute if score tracks mck_temp matches 1.. run scoreboard players remove tracks mck_temp 1
execute if score tracks mck_temp matches 1.. run function mck:menu/page_tracks/get_tracks