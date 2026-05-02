item replace entity @s inventory.0 with barrier[killme=1b,minecraft:item_name='{"text":"Reset All Data","color":"red","italic":false}',minecraft:custom_model_data=-7201] 1
item replace entity @s inventory.1 with respawn_anchor[killme=1b,minecraft:item_name='{"text":"Reset Checkpoints","color":"red","italic":false}',minecraft:custom_model_data=-7204] 1
item replace entity @s inventory.2 with gold_nugget[killme=1b,minecraft:item_name='{"text":"Reset Coins","color":"red","italic":false}',minecraft:custom_model_data=-7205] 1
item replace entity @s inventory.3 with chest[killme=1b,minecraft:item_name='{"text":"Reset Items","color":"red","italic":false}',minecraft:custom_model_data=-7206] 1
item replace entity @s inventory.4 with red_bed[killme=1b,minecraft:item_name='{"text":"Reset Startpos","color":"red","italic":false}',minecraft:custom_model_data=-7211] 1
item replace entity @s inventory.7 with grass_block[killme=1b,minecraft:item_name='{"text":"Set Track Icon","color":"gold","italic":false}',minecraft:custom_model_data=-7202] 1
item replace entity @s inventory.6 with paper[killme=1b,minecraft:item_name='{"text":"Set Track Data","color":"gold","italic":false}',minecraft:custom_model_data=-7203] 1
item replace entity @s inventory.10 with blue_wool[killme=1b,minecraft:item_name='{"text":"Set Physical Checkpoints","color":"red","italic":false}',minecraft:custom_model_data=-7300] 1
item replace entity @s inventory.17 with feather[killme=1b,minecraft:item_name='{"text":"Load Selected Item","color":"gold","italic":false}',minecraft:custom_model_data=-7212] 1
item replace entity @s inventory.18 with minecart[killme=1b,minecraft:item_name='{"text":"Add Normal Mode","color":"gold","italic":false}',minecraft:custom_model_data=-7212] 1
item replace entity @s inventory.19 with elytra[killme=1b,minecraft:item_name='{"text":"Add Fly Mode","color":"gold","italic":false}',minecraft:custom_model_data=-7212] 1
item replace entity @s inventory.20 with water_bucket[killme=1b,minecraft:item_name='{"text":"Add Underwater Mode","color":"gold","italic":false}',minecraft:custom_model_data=-7212] 1
item replace entity @s inventory.14 with nether_star[killme=1b,minecraft:item_name='{"text":"Add Bot Checkpoint [0 Blocks]","color":"gold","italic":false}',minecraft:custom_model_data=-7212] 1
item replace entity @s inventory.15 with nether_star[killme=1b,minecraft:item_name='{"text":"Add Bot Checkpoint [1 Blocks]","color":"gold","italic":false}',minecraft:custom_model_data=-7212] 1
item replace entity @s inventory.23 with nether_star[killme=1b,minecraft:item_name='{"text":"Add Bot Checkpoint [3 Blocks]","color":"gold","italic":false}',minecraft:custom_model_data=-7212] 1
item replace entity @s inventory.24 with nether_star[killme=1b,minecraft:item_name='{"text":"Add Bot Checkpoint [6 Blocks]","color":"gold","italic":false}',minecraft:custom_model_data=-7212] 1
item replace entity @s inventory.25 with barrier[killme=1b,minecraft:item_name='{"text":"Remove all Bot Checkpoints","color":"red","italic":false}',minecraft:custom_model_data=-7212] 1
item replace entity @s inventory.26 with barrier[killme=1b,minecraft:item_name='{"text":"Remove all modes","color":"red","italic":false}',minecraft:custom_model_data=-7212] 1

item replace entity @s hotbar.0 with carrot_on_a_stick[killme=1b,minecraft:item_name='{"text":"Add Checkpoint","color":"gold","italic":false}',minecraft:custom_model_data=-7207] 1
item replace entity @s hotbar.1 with carrot_on_a_stick[killme=1b,minecraft:item_name='{"text":"Add Coin","color":"gold","italic":false}',minecraft:custom_model_data=-7208] 1
item replace entity @s hotbar.2 with carrot_on_a_stick[killme=1b,minecraft:item_name='{"text":"Add Itembox","color":"gold","italic":false}',minecraft:custom_model_data=-7209] 1
item replace entity @s hotbar.6 with carrot_on_a_stick[killme=1b,minecraft:item_name='{"text":"Add Cameradata point","color":"gold","italic":false}',minecraft:custom_model_data=-7212] 1
item replace entity @s hotbar.7 with carrot_on_a_stick[killme=1b,minecraft:item_name='{"text":"Add Trafficlight","color":"gold","italic":false}',minecraft:custom_model_data=-7211] 1
item replace entity @s hotbar.8 with carrot_on_a_stick[killme=1b,minecraft:item_name='{"text":"Add Startpos","color":"gold","italic":false}',minecraft:custom_model_data=-7210] 1

item replace block 0 0 0 container.0 with grass_block
data modify block 0 0 0 Items[0].components.display.Name set from storage bob data.icon.components.display.Name

data modify block 0 0 0 Items[0] set from storage bob data
data modify block 0 0 0 Items[0].tag.killme set value 1b

item replace entity @s inventory.8 from block 0 0 0 container.0