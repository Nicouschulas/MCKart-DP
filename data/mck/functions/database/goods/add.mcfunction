data remove storage temp good
$data merge storage temp {good:{data: { group:0b, id:$(id)L, icon:{id:"minecraft:dirt"}, price:0, sale:0, currency:0, amount:-1, rebuy:0b, extras:[] }}}

data modify storage databases goods append from storage temp good
data modify storage databases output set from storage temp good