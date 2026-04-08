scoreboard players reset * mck_id
scoreboard players reset * mck_community
data modify storage lobby races set value []
data modify storage tracks used set value []

data modify storage databases parkour.best_name set value "---"
data modify storage databases parkour.best_time set value 999999999
function mck:parkour/update

data remove storage databases players
data remove storage databases tracks

function mck:best_players/reset

scoreboard players operation ranking_list mck_timer = ranking_list_update mck_admin_settings
scoreboard players set timer mck_coin_multiplier 0
function mck:ranklist/update_list
function mck:resources/load