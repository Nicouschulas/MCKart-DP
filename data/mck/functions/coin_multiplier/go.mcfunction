scoreboard players add level mck_coin_multiplier 1
scoreboard players operation timer mck_coin_multiplier += coin_multiplier_length mck_admin_settings

scoreboard players remove amount mck_temp 1
execute store result storage databases output.data.amount int 1 run scoreboard players get amount mck_temp


data modify storage databases input set from storage databases output
function mck:database/player_good_set

item modify entity @s enderchest.5 mck:player_goods_set

function mck:menu/page_cosmetics/menu_goods

tellraw @a " "
tellraw @a [{"text":"[","color":"gray","bold":true},{"translate":"info","color":"#57DDFF","bold":false},{"text":"] "},{"selector":"@s","color":"#FFF8B8","bold":true},{"translate":"chat.alert.coin_multiplier.new","color":"#FFDA85","bold":false}]
tellraw @a [{"text":"[","color":"gray","bold":true},{"translate":"info","color":"#57DDFF","bold":false},{"text":"] "},{"translate":"chat.alert.coin_multiplier.new2","color":"#FFDA85","bold":false},{"score":{"name":"level","objective":"mck_coin_multiplier"},"color":"gold","bold":true}]
tellraw @a " "

execute as @a at @s run playsound minecraft:entity.player.levelup master @s[scores={mck_setting1=1}] ~ ~ ~ 10 0.4