execute unless data entity @s Inventory[{Slot:9b}] if score amazon mck_goods_id matches 2.. run scoreboard players remove amazon mck_goods_id 1
execute unless data entity @s Inventory[{Slot:10b}] run scoreboard players add amazon mck_goods_id 1
execute unless data entity @s Inventory[{Slot:13b}] run tellraw @s {"text":"Click for changing","color":"white","bold":true,"italic":false,"clickEvent":{"action":"suggest_command","value":"/data modify storage amazon metadata set value { group:0b, price:0, sale:0, currency:0b, amount:-1, rebuy:0b, extras:[], child:false, children:[] }"}}

execute unless data entity @s Inventory[{Slot:31b}] if data entity @s SelectedItem run function mck:player/amazon/add
execute unless data entity @s Inventory[{Slot:31b}] unless data entity @s SelectedItem run tellraw @s {"text":"Hold an item for setting an icon!","color":"red","bold":true,"italic":false}
execute unless data entity @s Inventory[{Slot:35b}] if data entity @s SelectedItem run function mck:player/amazon/override
execute unless data entity @s Inventory[{Slot:35b}] unless data entity @s SelectedItem run tellraw @s {"text":"Hold an item for setting an icon!","color":"red","bold":true,"italic":false}

function mck:player/amazon/set_items

title @s actionbar [{"text":"Amazon ID: ","color":"gold","bold":true,"italic":false},{"score":{"name":"amazon","objective":"mck_goods_id"},"color":"white"}]