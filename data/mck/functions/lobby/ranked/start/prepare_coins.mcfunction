execute if data storage temp coins[0] run data modify storage temp coin.pos set from storage temp coins[0]
execute if data storage temp coins[0] run data modify storage temp coin.cooldown set value 1
execute if data storage temp coins[0] run data modify storage lobby ranked[0].coin_list append from storage temp coin
execute if data storage temp coins[0] run data remove storage temp coins[0]
execute if data storage temp coins[0] run function mck:lobby/ranked/start/prepare_coins