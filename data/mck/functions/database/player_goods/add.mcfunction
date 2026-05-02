data remove storage temp good
$data merge storage temp {good:{data: { group:0b, id:$(id)L, icon:{id:"minecraft:dirt"}, amount:1 }}}

data modify storage databases player_goods append from storage temp good
data modify storage databases output set from storage temp good