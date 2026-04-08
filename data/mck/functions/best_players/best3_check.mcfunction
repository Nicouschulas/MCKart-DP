execute store result score score mck_temp run data get storage best_players best3.score

execute if score stat mck_temp > score mck_temp store result storage best_players best3.score int 1 run scoreboard players get stat mck_temp
execute if score stat mck_temp > score mck_temp store success score bool mck_temp run data modify storage best_players best3.name set from entity @s EnderItems[1].tag.SkullOwner.Name
execute if score stat mck_temp > score mck_temp run function mck:best_players/best3_update with storage best_players best3
execute if score stat mck_temp > score mck_temp if score bool mck_temp matches 1 run tellraw @a " "
execute if score stat mck_temp > score mck_temp if score bool mck_temp matches 1 run tellraw @a [{"text":" 👑","color":"#FFF4BD","bold":false,"italic":false},{"translate":"chat.alert.new_best_player","color":"#E6D775","bold":false,"italic":false},{"nbt":"best3.name","storage":"best_players","color":"#FFF4BD","bold":true,"italic":false}]
execute if score stat mck_temp > score mck_temp if score bool mck_temp matches 1 run tellraw @a [{"text":" New Score: ","color":"#FFF4BD","bold":true,"italic":false},{"translate":"best_players.best3_1","color":"#E6D775","bold":false,"italic":false},{"text":" ","color":"#E6D775","bold":false,"italic":false},{"translate":"best_players.best3_2","color":"#E6D775","bold":false,"italic":false},{"text":" "},{"score":{"name":"stat","objective":"mck_temp"},"color":"#FFF4BD","bold":true,"italic":false}]
execute if score stat mck_temp > score mck_temp if score bool mck_temp matches 1 run tellraw @a " "
execute if score stat mck_temp > score mck_temp if score bool mck_temp matches 1 as @a[scores={mck_setting1=1}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0.4 1