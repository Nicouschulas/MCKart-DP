item replace block 0 0 0 container.0 with acacia_boat[minecraft:item_name:'{"text":" "}',minecraft:custom_model_data=101,killme=1b] 1
execute store result block 0 0 0 Items[0].components.minecraft:custom_model_data int 1 run scoreboard players get @s mck_glider_model
item replace entity @s armor.head from block 0 0 0 container.0