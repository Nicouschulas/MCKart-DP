execute if score lobby_loops mck_temp matches 9 run bossbar set nl9 visible true
execute if score lobby_loops mck_temp matches 8 run bossbar set nl8 visible true
execute if score lobby_loops mck_temp matches 7 run bossbar set nl7 visible true
execute if score lobby_loops mck_temp matches 6 run bossbar set nl6 visible true
execute if score lobby_loops mck_temp matches 5 run bossbar set nl5 visible true
execute if score lobby_loops mck_temp matches 4 run bossbar set nl4 visible true
execute if score lobby_loops mck_temp matches 3 run bossbar set nl3 visible true
execute if score lobby_loops mck_temp matches 2 run bossbar set nl2 visible true
execute if score lobby_loops mck_temp matches 1 run bossbar set nl1 visible true
execute if score lobby_loops mck_temp matches 9 run bossbar set nl9 max 60
execute if score lobby_loops mck_temp matches 8 run bossbar set nl8 max 60
execute if score lobby_loops mck_temp matches 7 run bossbar set nl7 max 60
execute if score lobby_loops mck_temp matches 6 run bossbar set nl6 max 60
execute if score lobby_loops mck_temp matches 5 run bossbar set nl5 max 60
execute if score lobby_loops mck_temp matches 4 run bossbar set nl4 max 60
execute if score lobby_loops mck_temp matches 3 run bossbar set nl3 max 60
execute if score lobby_loops mck_temp matches 2 run bossbar set nl2 max 60
execute if score lobby_loops mck_temp matches 1 run bossbar set nl1 max 60
execute if score lobby_loops mck_temp matches 9 run bossbar set nl9 color green
execute if score lobby_loops mck_temp matches 8 run bossbar set nl8 color green
execute if score lobby_loops mck_temp matches 7 run bossbar set nl7 color green
execute if score lobby_loops mck_temp matches 6 run bossbar set nl6 color green
execute if score lobby_loops mck_temp matches 5 run bossbar set nl5 color green
execute if score lobby_loops mck_temp matches 4 run bossbar set nl4 color green
execute if score lobby_loops mck_temp matches 3 run bossbar set nl3 color green
execute if score lobby_loops mck_temp matches 2 run bossbar set nl2 color green
execute if score lobby_loops mck_temp matches 1 run bossbar set nl1 color green
execute if score lobby_loops mck_temp matches 9 store result bossbar nl9 value run scoreboard players get lobbystarttime mck_temp
execute if score lobby_loops mck_temp matches 8 store result bossbar nl8 value run scoreboard players get lobbystarttime mck_temp
execute if score lobby_loops mck_temp matches 7 store result bossbar nl7 value run scoreboard players get lobbystarttime mck_temp
execute if score lobby_loops mck_temp matches 6 store result bossbar nl6 value run scoreboard players get lobbystarttime mck_temp
execute if score lobby_loops mck_temp matches 5 store result bossbar nl5 value run scoreboard players get lobbystarttime mck_temp
execute if score lobby_loops mck_temp matches 4 store result bossbar nl4 value run scoreboard players get lobbystarttime mck_temp
execute if score lobby_loops mck_temp matches 3 store result bossbar nl3 value run scoreboard players get lobbystarttime mck_temp
execute if score lobby_loops mck_temp matches 2 store result bossbar nl2 value run scoreboard players get lobbystarttime mck_temp
execute if score lobby_loops mck_temp matches 1 store result bossbar nl1 value run scoreboard players get lobbystarttime mck_temp
execute if score lobby_loops mck_temp matches 9 run bossbar set nl9 name [{"translate":"menu.page.play.normallobby","color":"#D6972B","bold":true,"italic":false},{"text": "  "},{"translate":"lobby.bossbar.status0","color":"white"},{"nbt":"time[]","storage":"time","interpret":true,"color":"white","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 8 run bossbar set nl8 name [{"translate":"menu.page.play.normallobby","color":"#D6972B","bold":true,"italic":false},{"text": "  "},{"translate":"lobby.bossbar.status0","color":"white"},{"nbt":"time[]","storage":"time","interpret":true,"color":"white","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 7 run bossbar set nl7 name [{"translate":"menu.page.play.normallobby","color":"#D6972B","bold":true,"italic":false},{"text": "  "},{"translate":"lobby.bossbar.status0","color":"white"},{"nbt":"time[]","storage":"time","interpret":true,"color":"white","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 6 run bossbar set nl6 name [{"translate":"menu.page.play.normallobby","color":"#D6972B","bold":true,"italic":false},{"text": "  "},{"translate":"lobby.bossbar.status0","color":"white"},{"nbt":"time[]","storage":"time","interpret":true,"color":"white","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 5 run bossbar set nl5 name [{"translate":"menu.page.play.normallobby","color":"#D6972B","bold":true,"italic":false},{"text": "  "},{"translate":"lobby.bossbar.status0","color":"white"},{"nbt":"time[]","storage":"time","interpret":true,"color":"white","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 4 run bossbar set nl4 name [{"translate":"menu.page.play.normallobby","color":"#D6972B","bold":true,"italic":false},{"text": "  "},{"translate":"lobby.bossbar.status0","color":"white"},{"nbt":"time[]","storage":"time","interpret":true,"color":"white","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 3 run bossbar set nl3 name [{"translate":"menu.page.play.normallobby","color":"#D6972B","bold":true,"italic":false},{"text": "  "},{"translate":"lobby.bossbar.status0","color":"white"},{"nbt":"time[]","storage":"time","interpret":true,"color":"white","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 2 run bossbar set nl2 name [{"translate":"menu.page.play.normallobby","color":"#D6972B","bold":true,"italic":false},{"text": "  "},{"translate":"lobby.bossbar.status0","color":"white"},{"nbt":"time[]","storage":"time","interpret":true,"color":"white","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 1 run bossbar set nl1 name [{"translate":"menu.page.play.normallobby","color":"#D6972B","bold":true,"italic":false},{"text": "  "},{"translate":"lobby.bossbar.status0","color":"white"},{"nbt":"time[]","storage":"time","interpret":true,"color":"white","bold":true,"separator":""}]