data modify storage temp name set from entity @s EnderItems[0].components."minecraft:custom_data".playerdata.name
item replace block 0 0 0 container.0 from entity @s enderchest.0
data modify block 0 0 0 Items[0].components."minecraft:item_name" set value '{"translate":"menu.page.stats.personal","color":"#FFCD75","bold":true,"italic":false}'
data modify block 0 0 0 Items[0].components."minecraft:custom_data".killme set value 1b
item replace entity @s inventory.11 from block 0 0 0 container.0

item replace entity @s inventory.15 with player_head[custom_data={killme:1b},item_name='{"translate":"menu.page.stats.global","color":"#77BAE0","bold":true,"italic":false}',profile={id:[I;-1121419518,2067529689,-982738485,263170875],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOThkYWExZTNlZDk0ZmYzZTMzZTFkNGM2ZTQzZjAyNGM0N2Q3OGE1N2JhNGQzOGU3NWU3YzkyNjQxMDYifX19"}]}] 1

item replace entity @s inventory.26 with gold_nugget[custom_data={killme:1b},item_name='{"translate":"menu.page.stats.reset","color":"#CC6E6E","bold":true,"italic":false}',lore=['{"text":" "}','{"translate":"menu.page.stats.reset.lore","color":"gray","bold":false,"italic":false}'],custom_model_data=148] 1

execute if score @s mck_permission matches 3.. run item replace entity @s inventory.18 with gold_nugget[custom_data={killme:1b},item_name='{"translate":"menu.page.stats.admin_settings","color":"#F0F0F0","bold":true,"italic":false}',custom_model_data=171] 1

item replace entity @s inventory.4 with gold_nugget[custom_data={killme:1b},item_name='{"text":" "}',custom_model_data=10004] 1