item replace entity @s inventory.0 with gold_nugget{display:{Name:'{"translate":"menu.page.cosmetics.exit","color":"#FF9782","bold":true,"italic": false}'},killme:1b,CustomModelData:115} 1

item replace entity @s inventory.2 with gold_nugget{display:{Name:'{"translate":"menu.page.cosmetics.kart_skin","color":"#FFC766","bold":true,"italic":false}'},CustomModelData:141,killme:1b} 1
item replace entity @s inventory.7 with gold_nugget{display:{Name:'{"translate":"menu.page.cosmetics.coin_multiplier","color":"#FFC766","bold":true,"italic":false}'},CustomModelData:107,killme:1b} 1
item replace entity @s inventory.4 with gold_nugget{display:{Name:'{"translate":"menu.page.cosmetics.handheld_item","color":"#FFC766","bold":true,"italic":false}'},CustomModelData:142,killme:1b} 1
item replace entity @s inventory.5 with gold_nugget{display:{Name:'{"translate":"menu.page.cosmetics.hat","color":"#FFC766","bold":true,"italic":false}'},CustomModelData:143,killme:1b} 1
item replace entity @s inventory.6 with gold_nugget{display:{Name:'{"translate":"menu.page.cosmetics.audio_pack","color":"#FFC766","bold":true,"italic":false}'},CustomModelData:144,killme:1b} 1
item replace entity @s inventory.3 with gold_nugget{display:{Name:'{"translate":"menu.page.cosmetics.glider_skin","color":"#FFC766","bold":true,"italic":false}'},CustomModelData:145,killme:1b} 1
item replace entity @s inventory.8 with gold_nugget{display:{Name:'{"translate":"menu.page.cosmetics.trail","color":"#FFC766","bold":true,"italic":false}'},CustomModelData:146,killme:1b} 1
item replace entity @s inventory.9 with air
execute if score @s mck_previous_page matches 1 run item replace entity @s inventory.9 with gold_nugget{display:{Name:'{"translate":"menu.profile.back","color":"gray","bold":true,"italic":false}'},CustomModelData:112,menu:1b,killme:1b} 1


item replace entity @s inventory.18 with carved_pumpkin{display:{Name:'{"text":" "}'},menu:1b,killme:1b}
item replace entity @s inventory.19 with carved_pumpkin{display:{Name:'{"text":" "}'},menu:1b,killme:1b}
item replace entity @s inventory.20 with carved_pumpkin{display:{Name:'{"text":" "}'},menu:1b,killme:1b}
item replace entity @s inventory.21 with carved_pumpkin{display:{Name:'{"text":" "}'},menu:1b,killme:1b}
item replace entity @s inventory.22 with carved_pumpkin{display:{Name:'{"text":" "}'},menu:1b,killme:1b}
item replace entity @s inventory.23 with carved_pumpkin{display:{Name:'{"text":" "}'},menu:1b,killme:1b}
item replace entity @s inventory.24 with carved_pumpkin{display:{Name:'{"text":" "}'},menu:1b,killme:1b}

data modify storage temp list set from entity @s EnderItems[5].tag.menu_goods
execute unless score @s mck_player_menu matches 2 if data storage temp list[0] run function mck:menu/page_cosmetics/slots/slot1
execute unless score @s mck_player_menu matches 2 if data storage temp list[0] run function mck:menu/page_cosmetics/slots/slot2
execute unless score @s mck_player_menu matches 2 if data storage temp list[0] run function mck:menu/page_cosmetics/slots/slot3
execute unless score @s mck_player_menu matches 2 if data storage temp list[0] run function mck:menu/page_cosmetics/slots/slot4
execute if data storage temp list[0] run function mck:menu/page_cosmetics/slots/slot5
execute if data storage temp list[0] run function mck:menu/page_cosmetics/slots/slot6
execute if data storage temp list[0] run function mck:menu/page_cosmetics/slots/slot7

item replace entity @s inventory.26 with gold_nugget{display:{Name:'{"translate":"menu.profile.scroll_right","color":"gray","bold":true,"italic":false}'},CustomModelData:114,menu:1b,killme:1b} 1

item replace entity @s weapon.offhand with gold_nugget{display:{Name:'{"text":" "}'},CustomModelData:10011,killme:1b} 1