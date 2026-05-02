data modify storage temp name set from entity @s EnderItems[0].components.playerdata.name  
item replace block 0 0 0 container.0 from entity @s enderchest.1  
data modify block 0 0 0 Items[0].components.display.Name set value '{"translate":"menu.page.stats.personal","color":"#FFCD75","bold":true,"italic":false}'  
data modify block 0 0 0 Items[0].components.killme set value 1b  
item replace entity @s inventory.11 from block 0 0 0 container.0  

item replace entity @s inventory.15 with player_head{display:{Name:'{"translate":"menu.page.stats.global","color":"#77BAE0","bold":true,"italic":false}'},killme:1b,SkullOwner:{Id:[I;-1121419518,2067529689,-982738485,263170875],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOThkYWExZTNlZDk0ZmYzZTMzZTFkNGM2ZTQzZjAyNGM0N2Q3OGE1N2JhNGQzOGU3NWU3YzkyNjQxMDYifX19"}]}}} 1  

item replace entity @s inventory.26 with gold_nugget{display:{Name:'{"translate":"menu.page.stats.reset","color":"#CC6E6E","bold":true,"italic":false}',Lore:['{"text":" "}','{"translate":"menu.page.stats.reset.lore","color":"gray","bold":false,"italic":false}']},CustomModelData:148,killme:1b} 1  

execute if score @s mck_permission matches 3.. run item replace entity @s inventory.18 with gold_nugget{display:{Name:'{"translate":"menu.page.stats.admin_settings","color":"#F0F0F0","bold":true,"italic":false}'},CustomModelData:171,killme:1b} 1  

item replace entity @s inventory.4 with gold_nugget{display:{Name:'{"text":" "}'},CustomModelData:10004,killme:1b} 1