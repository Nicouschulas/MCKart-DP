data remove storage temp number

execute if score number mck_temp matches 1000000.. run scoreboard players operation digit mck_temp = number mck_temp
execute if score number mck_temp matches 1000000.. run scoreboard players operation digit mck_temp /= #1000000 wasd.constant
execute if score number mck_temp matches 1000000.. run function mck:shop/append_digit

execute if score number mck_temp matches 100000.. run scoreboard players operation digit mck_temp = number mck_temp
execute if score number mck_temp matches 100000.. run scoreboard players operation digit mck_temp /= #100000 wasd.constant
execute if score number mck_temp matches 100000.. run function mck:shop/append_digit

execute if score number mck_temp matches 10000.. run scoreboard players operation digit mck_temp = number mck_temp
execute if score number mck_temp matches 10000.. run scoreboard players operation digit mck_temp /= #10000 wasd.constant
execute if score number mck_temp matches 10000.. run function mck:shop/append_digit

execute if score number mck_temp matches 1000.. run scoreboard players operation digit mck_temp = number mck_temp
execute if score number mck_temp matches 1000.. run scoreboard players operation digit mck_temp /= #1000 wasd.constant
execute if score number mck_temp matches 1000.. run function mck:shop/append_digit

execute if score number mck_temp matches 100.. run scoreboard players operation digit mck_temp = number mck_temp
execute if score number mck_temp matches 100.. run scoreboard players operation digit mck_temp /= #100 wasd.constant
execute if score number mck_temp matches 100.. run function mck:shop/append_digit

execute if score number mck_temp matches 10.. run scoreboard players operation digit mck_temp = number mck_temp
execute if score number mck_temp matches 10.. run scoreboard players operation digit mck_temp /= #10 wasd.constant
execute if score number mck_temp matches 10.. run function mck:shop/append_digit

scoreboard players operation digit mck_temp = number mck_temp
function mck:shop/append_digit