execute store result score temp mck_temp run data get storage best_players best1.score

$execute if score temp mck_temp matches 1.. as @e[type=armor_stand,tag=mck_best1,limit=1] run item replace entity @s armor.head with player_head{SkullOwner:"$(name)"} 
execute unless score temp mck_temp matches 1.. as @e[type=armor_stand,tag=mck_best1,limit=1] run item replace entity @s armor.head with player_head{display:{Name:'{"text":"Question Mark"}'},SkullOwner:{Id:[I;2132406115,-1534243685,-2023144825,-1905145546],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGE5OWIwNWI5YTFkYjRkMjliNWU2NzNkNzdhZTU0YTc3ZWFiNjY4MTg1ODYwMzVjOGEyMDA1YWViODEwNjAyYSJ9fX0="}]}}}

execute as @e[type=armor_stand,tag=mck_best1,limit=1] at @s run setblock ~ 75 ~-1 air
execute as @e[type=armor_stand,tag=mck_best1,limit=1] at @s run setblock ~ 75 ~-1 bamboo_wall_sign[facing=north]{front_text:{messages:['{"translate":"best_players.best1_1","color":"#C1D9D4"}','{"translate":"best_players.best1_2","color":"#C1D9D4"}','{"score":{"name":"temp","objective":"mck_temp"},"color":"#95FF85","bold":true}','{"text":""}']},is_waxed:1b} replace

execute as @e[type=armor_stand,tag=mck_best1,limit=1] at @s positioned ~ ~3 ~ run kill @e[type=text_display,tag=mck_best_name,distance=..1]
$execute as @e[type=armor_stand,tag=mck_best1,limit=1] at @s run summon text_display ~ ~3 ~ {billboard:"center",shadow:1b,Tags:["mck_best_name"],text:'{"text":"$(name)"}',background:0}