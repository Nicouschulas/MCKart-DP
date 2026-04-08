execute if score lobby_loops mck_temp matches 9 run bossbar set nl9 visible true
execute if score lobby_loops mck_temp matches 8 run bossbar set nl8 visible true
execute if score lobby_loops mck_temp matches 7 run bossbar set nl7 visible true
execute if score lobby_loops mck_temp matches 6 run bossbar set nl6 visible true
execute if score lobby_loops mck_temp matches 5 run bossbar set nl5 visible true
execute if score lobby_loops mck_temp matches 4 run bossbar set nl4 visible true
execute if score lobby_loops mck_temp matches 3 run bossbar set nl3 visible true
execute if score lobby_loops mck_temp matches 2 run bossbar set nl2 visible true
execute if score lobby_loops mck_temp matches 1 run bossbar set nl1 visible true
execute if score lobby_loops mck_temp matches 9 store result bossbar nl9 value run scoreboard players get lobbygametime mck_temp
execute if score lobby_loops mck_temp matches 8 store result bossbar nl8 value run scoreboard players get lobbygametime mck_temp
execute if score lobby_loops mck_temp matches 7 store result bossbar nl7 value run scoreboard players get lobbygametime mck_temp
execute if score lobby_loops mck_temp matches 6 store result bossbar nl6 value run scoreboard players get lobbygametime mck_temp
execute if score lobby_loops mck_temp matches 5 store result bossbar nl5 value run scoreboard players get lobbygametime mck_temp
execute if score lobby_loops mck_temp matches 4 store result bossbar nl4 value run scoreboard players get lobbygametime mck_temp
execute if score lobby_loops mck_temp matches 3 store result bossbar nl3 value run scoreboard players get lobbygametime mck_temp
execute if score lobby_loops mck_temp matches 2 store result bossbar nl2 value run scoreboard players get lobbygametime mck_temp
execute if score lobby_loops mck_temp matches 1 store result bossbar nl1 value run scoreboard players get lobbygametime mck_temp



execute if score lobby_loops mck_temp matches 9 if score lobbygametime mck_temp matches 1201.. run bossbar set nl9 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"#B1DB4F","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 8 if score lobbygametime mck_temp matches 1201.. run bossbar set nl8 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"#B1DB4F","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 7 if score lobbygametime mck_temp matches 1201.. run bossbar set nl7 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"#B1DB4F","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 6 if score lobbygametime mck_temp matches 1201.. run bossbar set nl6 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"#B1DB4F","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 5 if score lobbygametime mck_temp matches 1201.. run bossbar set nl5 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"#B1DB4F","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 4 if score lobbygametime mck_temp matches 1201.. run bossbar set nl4 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"#B1DB4F","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 3 if score lobbygametime mck_temp matches 1201.. run bossbar set nl3 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"#B1DB4F","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 2 if score lobbygametime mck_temp matches 1201.. run bossbar set nl2 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"#B1DB4F","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 1 if score lobbygametime mck_temp matches 1201.. run bossbar set nl1 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"#B1DB4F","bold":true,"separator":""}]


execute if score lobby_loops mck_temp matches 9 if score lobbygametime mck_temp matches 201..1200 run bossbar set nl9 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"gold","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 8 if score lobbygametime mck_temp matches 201..1200 run bossbar set nl8 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"gold","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 7 if score lobbygametime mck_temp matches 201..1200 run bossbar set nl7 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"gold","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 6 if score lobbygametime mck_temp matches 201..1200 run bossbar set nl6 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"gold","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 5 if score lobbygametime mck_temp matches 201..1200 run bossbar set nl5 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"gold","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 4 if score lobbygametime mck_temp matches 201..1200 run bossbar set nl4 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"gold","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 3 if score lobbygametime mck_temp matches 201..1200 run bossbar set nl3 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"gold","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 2 if score lobbygametime mck_temp matches 201..1200 run bossbar set nl2 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"gold","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 1 if score lobbygametime mck_temp matches 201..1200 run bossbar set nl1 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"gold","bold":true,"separator":""}]


execute if score lobby_loops mck_temp matches 9 if score lobbygametime mck_temp matches ..200 run bossbar set nl9 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"#DB4D37","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 8 if score lobbygametime mck_temp matches ..200 run bossbar set nl8 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"#DB4D37","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 7 if score lobbygametime mck_temp matches ..200 run bossbar set nl7 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"#DB4D37","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 6 if score lobbygametime mck_temp matches ..200 run bossbar set nl6 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"#DB4D37","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 5 if score lobbygametime mck_temp matches ..200 run bossbar set nl5 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"#DB4D37","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 4 if score lobbygametime mck_temp matches ..200 run bossbar set nl4 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"#DB4D37","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 3 if score lobbygametime mck_temp matches ..200 run bossbar set nl3 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"#DB4D37","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 2 if score lobbygametime mck_temp matches ..200 run bossbar set nl2 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"#DB4D37","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 1 if score lobbygametime mck_temp matches ..200 run bossbar set nl1 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"#DB4D37","bold":true,"separator":""}]