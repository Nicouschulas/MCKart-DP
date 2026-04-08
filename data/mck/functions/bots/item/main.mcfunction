# rolling
execute if score @s mck_item1 matches 101.. run scoreboard players remove @s mck_item1 1
execute if score @s mck_item1 matches 101.. run scoreboard players operation temp mck_temp = @s mck_item1
execute if score @s mck_item1 matches 101.. run scoreboard players operation temp mck_temp %= #2 wasd.constant
execute if score @s mck_item1 matches 101.. if score temp mck_temp matches 1 run data modify entity @s HandItems[0].tag.item1 append from entity @s HandItems[0].tag.item1[0]
execute if score @s mck_item1 matches 101.. if score temp mck_temp matches 1 run data remove entity @s HandItems[0].tag.item1[0]
execute if score @s mck_item1 matches 101.. if score temp mck_temp matches 1 run function mck:bots/item/item1_rolling

# selecting
execute if score @s mck_item1 matches 100 store result score id mck_temp run data get entity @s HandItems[0].tag.item1[0]
execute if score @s mck_item1 matches 100 run function mck:bots/item/set_count
execute if score @s mck_item1 matches 100 run scoreboard players operation @s mck_item1_count = temp mck_item1_count
execute if score @s mck_item1 matches 100 run function mck:bots/item/item_mount
execute if score @s mck_item1 matches 100 run scoreboard players operation @s mck_item1 = id mck_temp


# transfering
execute if score @s mck_item2 matches 1.. if score @s mck_item1 matches 0 run function mck:bots/item/transfer
execute if score @s mck_item2 matches 0 run execute on passengers if entity @s[tag=puppet] run item replace entity @s weapon.offhand with air



# rolling
execute if score @s mck_item2 matches 101.. run scoreboard players remove @s mck_item2 1
execute if score @s mck_item2 matches 101.. run scoreboard players operation temp mck_temp = @s mck_item2
execute if score @s mck_item2 matches 101.. run scoreboard players operation temp mck_temp %= #2 wasd.constant
execute if score @s mck_item2 matches 101.. if score temp mck_temp matches 1 run data modify entity @s HandItems[0].tag.item2 append from entity @s HandItems[0].tag.item2[0]
execute if score @s mck_item2 matches 101.. if score temp mck_temp matches 1 run data remove entity @s HandItems[0].tag.item2[0]
execute if score @s mck_item2 matches 101.. if score temp mck_temp matches 1 run function mck:bots/item/item2_rolling

# selecting
execute if score @s mck_item2 matches 100 store result score id mck_temp run data get entity @s HandItems[0].tag.item2[0]
execute if score @s mck_item2 matches 100 run function mck:bots/item/set_count
execute if score @s mck_item2 matches 100 run scoreboard players operation @s mck_item2_count = temp mck_item1_count
execute if score @s mck_item2 matches 100 run scoreboard players operation @s mck_item2 = id mck_temp



# item setting
execute if score @s mck_item1 matches 1..99 run function mck:bots/item/item1_set
execute if score @s mck_item2 matches 1..99 run function mck:bots/item/item2_set


# golden shroom
execute if score @s mck_item1 matches 16 if score @s mck_item1_count matches 1..80 run scoreboard players remove @s mck_item1_count 1
# super leaf
execute if score @s mck_item1 matches 14 if score @s mck_item1_count matches 1..100 run scoreboard players remove @s mck_item1_count 1

execute if score @s mck_item1 matches 1..99 if predicate mck:bot_item_use run scoreboard players set @s mck_use 1

# item using
execute if score @s mck_use matches 1.. if score @s mck_item1 matches 1..99 run function mck:bots/item/use
execute if score @s mck_use matches 1.. if score @s mck_item1 matches 1..99 run scoreboard players remove @s mck_item1_count 1
execute if score @s mck_item1 matches 1..99 if score @s mck_item1_count matches ..0 run function mck:bots/item/no_uses