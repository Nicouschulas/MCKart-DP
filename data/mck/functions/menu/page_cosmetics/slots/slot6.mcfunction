item replace block 0 0 0 container.0 with paper

data modify storage temp list[0].data.icon.components minecraft:display.Lore prepend value '{"text":" "}'

data modify block 0 0 0 Items[0].id set from storage temp list[0].data.icon.id
data modify block 0 0 0 Items[0].components set from storage temp list[0].data.icon.components

execute unless data storage temp list[0].data.children[0] run item modify block 0 0 0 container.0 mck:cosmetics/amount
execute unless data storage temp list[0].data.children[0] run function mck:menu/page_cosmetics/slots/check_selected


item replace entity @s inventory.23 from block 0 0 0 container.0

execute if data storage temp list[0].data.children[0] run item replace entity @s inventory.14 with gold_nugget{display:{Name:'{"text":" "}'},menu:1b,killme:1b,CustomModelData:137}


data remove storage temp list[0]