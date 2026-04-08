item replace block 0 0 0 container.0 with acacia_boat{display:{Name:'{"text":" "}'},CustomModelData:101,killme:1b} 1
execute store result block 0 0 0 Items[0].tag.CustomModelData int 1 run scoreboard players get @s mck_glider_model
item replace entity @s armor.head from block 0 0 0 container.0