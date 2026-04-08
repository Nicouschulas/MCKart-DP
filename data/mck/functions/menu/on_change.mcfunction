execute if entity @s[tag=!nomenu,tag=!builder] if score @s mck_menudelay matches 0 run function mck:menu/main_menu
advancement revoke @s only mck:on_inventory_change


execute if score @s mck_page matches -9 if data entity @s Inventory[{id:"minecraft:written_book"}].tag.search run function mck:search_player/get_player_id