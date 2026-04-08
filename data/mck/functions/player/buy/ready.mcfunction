execute if score currency mck_temp matches 0 run scoreboard players operation @s mck_bank -= price mck_temp
execute if score currency mck_temp matches 1 run scoreboard players operation @s mck_kart_fragments -= price mck_temp



data modify storage databases player_goods set from entity @s EnderItems[5].tag.player_goods
function mck:database/player_good_find

execute unless data storage databases output.data run function mck:player/buy/add_new

execute store result score good_amount mck_temp run data get storage databases output.data.amount
scoreboard players add good_amount mck_temp 1
execute store result storage databases output.data.amount int 1 run scoreboard players get good_amount mck_temp
data modify storage databases input set from storage databases output
function mck:database/player_good_set

item modify entity @s enderchest.5 mck:player_goods_set

execute if score group mck_temp matches 1 run advancement grant @s only mck:shop/kart_skin
execute if score group mck_temp matches 2 run advancement grant @s only mck:shop/coin_multiplier
execute if score group mck_temp matches 3 run advancement grant @s only mck:shop/super_vote
execute if score group mck_temp matches 4 run advancement grant @s only mck:shop/handheld_item
execute if score group mck_temp matches 5 run advancement grant @s only mck:shop/hat
execute if score group mck_temp matches 6 run advancement grant @s only mck:shop/audio_pack
execute if score group mck_temp matches 7 run advancement grant @s only mck:shop/glider_skin
execute if score group mck_temp matches 8 run advancement grant @s only mck:shop/trail
execute if score group mck_temp matches 9 run advancement grant @s only mck:shop/loot_box
tellraw @s [{"text": ""},{"text":"[","color":"gray","bold":true},{"translate":"system","color":"gold","bold":false},{"text":"] ","color":"gray","bold":true},{"translate":"chat.alert.cosmetics.gitgud","color":"white","bold":false},{"nbt":"output.data.icon.tag.display.Name","storage":"databases","interpret":true}]


execute if data storage temp temp_good.data.extras[0] run data modify storage temp list set from storage temp temp_good.data.extras
execute if data storage temp temp_good.data.extras[0] run function mck:player/buy/get_extras


execute if score amount mck_temp matches 1.. run scoreboard players remove amount mck_temp 1
execute if score amount mck_temp matches 0.. run function mck:database/good_find
execute if score amount mck_temp matches 0.. store result storage databases output.data.amount int 1 run scoreboard players get amount mck_temp
execute if score amount mck_temp matches 0.. run data modify storage databases input set from storage databases output
execute if score amount mck_temp matches 0.. run function mck:database/good_set
execute if score amount mck_temp matches 0.. run function mck:database/good_find
execute if score amount mck_temp matches 0.. at @e[type=interaction,distance=..6,tag=this_interaction] run function mck:player/buy/refresh_text

# challenge level 6 quest 3
execute if score @s mck_challenge_level matches 6 if score @s mck_quest3 matches 0.. run scoreboard players add @s mck_quest3 1
execute if score @s mck_challenge_level matches 6 if score @s mck_quest3 matches 0.. run function mck:player/challenges/reached


data modify storage temp enderchest set from entity @s EnderItems

execute if score currency mck_temp matches 0 store result score stat mck_temp run data get storage temp enderchest[4].tag.stats.coins_spent
execute if score currency mck_temp matches 0 run scoreboard players operation stat mck_temp += price mck_temp
execute if score currency mck_temp matches 0 store result storage temp enderchest[4].tag.stats.coins_spent int 1 run scoreboard players get stat mck_temp
execute if score currency mck_temp matches 1 store result score stat mck_temp run data get storage temp enderchest[4].tag.stats.kart_fragments_spent
execute if score currency mck_temp matches 1 run scoreboard players operation stat mck_temp += price mck_temp
execute if score currency mck_temp matches 1 store result storage temp enderchest[4].tag.stats.kart_fragments_spent int 1 run scoreboard players get stat mck_temp

item replace block 0 0 0 container.0 with book
data modify block 0 0 0 Items[0].tag set from storage temp enderchest[4].tag
item replace entity @s enderchest.4 from block 0 0 0 container.0
function mck:player/stats/push_to_db