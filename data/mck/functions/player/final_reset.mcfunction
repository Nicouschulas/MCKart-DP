execute unless score @s mck_scene matches 1..17 run tellraw @s " "
execute unless score @s mck_scene matches 1..17 run tellraw @s [{"text":"           #      ","color":"white","bold":true,"italic":false,"obfuscated":true},{"translate":"scene.first_join.title1","color":"#CCECFF","bold":true,"italic":false,"obfuscated":false},{"text":"      #","color":"white","bold":true,"italic":false,"obfuscated":true}]
execute unless score @s mck_scene matches 1..17 run tellraw @s "                       \uaab7"
execute unless score @s mck_scene matches 1..17 run tellraw @s " "
execute unless score @s mck_scene matches 1..17 run tellraw @s [{"nbt":"version[]","storage":"databases","interpret":true,"separator":""}]
execute unless score @s mck_scene matches 1..17 run tellraw @s " "

execute unless score @s mck_scene matches 1..17 run tp @s[tag=!builder] -232.5 71 -113.5 180 0