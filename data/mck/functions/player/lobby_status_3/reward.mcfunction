scoreboard players operation time mck_time = @s mck_timer
function mck:time/calc

scoreboard players set temp mck_temp 1
scoreboard players operation temp mck_temp += @s mck_players
scoreboard players operation temp mck_temp -= @s mck_place

scoreboard players operation temp2 mck_temp = @s mck_coins
scoreboard players operation temp2 mck_temp -= @s mck_coin_multiplier
scoreboard players operation temp2 mck_temp -= temp mck_temp

tellraw @s " "
tellraw @s [{"text":" ------------","color":"#6C7D56","bold":true,"italic":false},{"text":" #  ","color":"#95BF78","obfuscated":true},{"translate":"chat.alert.rewards","color":"#C6FFBD","font":"font1","bold": false},{"text":"  # ","color":"#95BF78","obfuscated":true},{"text":"------------","color":"#6C7D56"}]
tellraw @s " "
tellraw @s [{"translate":"chat.alert.rewards.race.place","color":"#BFBFBF"},{"score":{"name":"@s","objective":"mck_place"},"color":"#EDEDBB","bold":true},{"translate":"chat.alert.rewards.race.time","color":"#BFBFBF"},{"nbt":"time[]","storage":"time","interpret":true,"color":"#EDEDBB","bold":true,"separator":""}]
tellraw @s " "
tellraw @s [{"translate":"chat.alert.rewards.race.collected","color":"#BFBFBF"},{"score":{"name":"temp2","objective":"mck_temp"},"color":"#EDDE91","bold":true}]
tellraw @s [{"translate":"chat.alert.rewards.race.coins_placing","color":"#BFBFBF"},{"score":{"name":"temp","objective":"mck_temp"},"color":"#EDDE91","bold":true}]
tellraw @s [{"translate":"chat.alert.rewards.race.multiplier","color":"#BFBFBF"},{"score":{"name":"@s","objective":"mck_coin_multiplier"},"color":"#EDDE91","bold":true}]
tellraw @s [{"translate":"chat.alert.rewards.race.coins_total","color":"#BFBFBF"},{"score":{"name":"@s","objective":"mck_coins"},"color":"#EDDE91","bold":true},{"text":" \uaae0","bold":false,"color": "white"}]
tellraw @s " "
tellraw @s [{"translate":"chat.alert.rewards.race.rewards","color":"#BFBFBF"},{"translate":"chat.alert.rewards.race.exp","color":"#BF69AB"},{"text":" + ","color":"#BFBFBF","bold":true},{"text":"2","color":"#FF8C69"},{"text":"\uaae1","bold":false,"color": "white"},{"translate":"chat.alert.rewards.race.kart_fragment","color":"#FF8C69"}]

scoreboard players reset @s mck_coin_multiplier

scoreboard players set @s mck_tumble 0