data modify storage databases input set from storage temp temp_good
data remove storage databases input.data.price
data remove storage databases input.data.sale
data remove storage databases input.data.currency
data modify storage databases input.data.amount set value 0
data remove storage databases input.data.rebuy
data remove storage databases input.data.disabled

function mck:database/player_good_add
function mck:database/player_good_set
function mck:database/player_good_find