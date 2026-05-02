execute if entity @p[nbt={Item:{components:[{type:"minecraft:item_name",name:"spec_menu"},{type:"minecraft:lore",lore:["List Players"]}]}},distance=..1] run function mck:menu/spec_menu/slot

data remove storage temp players[0]
execute if data storage temp players[0] run function mck:menu/spec_menu/list_players