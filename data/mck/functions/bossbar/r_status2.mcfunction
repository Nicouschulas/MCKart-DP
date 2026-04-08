execute if score lobby_loops mck_temp matches 9 run bossbar set rl9 visible true
execute if score lobby_loops mck_temp matches 8 run bossbar set rl8 visible true
execute if score lobby_loops mck_temp matches 7 run bossbar set rl7 visible true
execute if score lobby_loops mck_temp matches 6 run bossbar set rl6 visible true
execute if score lobby_loops mck_temp matches 5 run bossbar set rl5 visible true
execute if score lobby_loops mck_temp matches 4 run bossbar set rl4 visible true
execute if score lobby_loops mck_temp matches 3 run bossbar set rl3 visible true
execute if score lobby_loops mck_temp matches 2 run bossbar set rl2 visible true
execute if score lobby_loops mck_temp matches 1 run bossbar set rl1 visible true
execute if score lobby_loops mck_temp matches 9 store result bossbar rl9 value run scoreboard players get lobbygametime mck_temp
execute if score lobby_loops mck_temp matches 8 store result bossbar rl8 value run scoreboard players get lobbygametime mck_temp
execute if score lobby_loops mck_temp matches 7 store result bossbar rl7 value run scoreboard players get lobbygametime mck_temp
execute if score lobby_loops mck_temp matches 6 store result bossbar rl6 value run scoreboard players get lobbygametime mck_temp
execute if score lobby_loops mck_temp matches 5 store result bossbar rl5 value run scoreboard players get lobbygametime mck_temp
execute if score lobby_loops mck_temp matches 4 store result bossbar rl4 value run scoreboard players get lobbygametime mck_temp
execute if score lobby_loops mck_temp matches 3 store result bossbar rl3 value run scoreboard players get lobbygametime mck_temp
execute if score lobby_loops mck_temp matches 2 store result bossbar rl2 value run scoreboard players get lobbygametime mck_temp
execute if score lobby_loops mck_temp matches 1 store result bossbar rl1 value run scoreboard players get lobbygametime mck_temp


execute if score lobby_loops mck_temp matches 9 if score lobbygametime mck_temp matches 1201.. run bossbar set rl9 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"#B1DB4F","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 8 if score lobbygametime mck_temp matches 1201.. run bossbar set rl8 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"#B1DB4F","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 7 if score lobbygametime mck_temp matches 1201.. run bossbar set rl7 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"#B1DB4F","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 6 if score lobbygametime mck_temp matches 1201.. run bossbar set rl6 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"#B1DB4F","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 5 if score lobbygametime mck_temp matches 1201.. run bossbar set rl5 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"#B1DB4F","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 4 if score lobbygametime mck_temp matches 1201.. run bossbar set rl4 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"#B1DB4F","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 3 if score lobbygametime mck_temp matches 1201.. run bossbar set rl3 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"#B1DB4F","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 2 if score lobbygametime mck_temp matches 1201.. run bossbar set rl2 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"#B1DB4F","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 1 if score lobbygametime mck_temp matches 1201.. run bossbar set rl1 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"#B1DB4F","bold":true,"separator":""}]


execute if score lobby_loops mck_temp matches 9 if score lobbygametime mck_temp matches 201..1200 run bossbar set rl9 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"gold","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 8 if score lobbygametime mck_temp matches 201..1200 run bossbar set rl8 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"gold","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 7 if score lobbygametime mck_temp matches 201..1200 run bossbar set rl7 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"gold","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 6 if score lobbygametime mck_temp matches 201..1200 run bossbar set rl6 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"gold","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 5 if score lobbygametime mck_temp matches 201..1200 run bossbar set rl5 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"gold","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 4 if score lobbygametime mck_temp matches 201..1200 run bossbar set rl4 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"gold","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 3 if score lobbygametime mck_temp matches 201..1200 run bossbar set rl3 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"gold","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 2 if score lobbygametime mck_temp matches 201..1200 run bossbar set rl2 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"gold","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 1 if score lobbygametime mck_temp matches 201..1200 run bossbar set rl1 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"gold","bold":true,"separator":""}]


execute if score lobby_loops mck_temp matches 9 if score lobbygametime mck_temp matches ..200 run bossbar set rl9 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"#DB4D37","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 8 if score lobbygametime mck_temp matches ..200 run bossbar set rl8 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"#DB4D37","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 7 if score lobbygametime mck_temp matches ..200 run bossbar set rl7 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"#DB4D37","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 6 if score lobbygametime mck_temp matches ..200 run bossbar set rl6 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"#DB4D37","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 5 if score lobbygametime mck_temp matches ..200 run bossbar set rl5 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"#DB4D37","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 4 if score lobbygametime mck_temp matches ..200 run bossbar set rl4 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"#DB4D37","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 3 if score lobbygametime mck_temp matches ..200 run bossbar set rl3 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"#DB4D37","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 2 if score lobbygametime mck_temp matches ..200 run bossbar set rl2 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"#DB4D37","bold":true,"separator":""}]
execute if score lobby_loops mck_temp matches 1 if score lobbygametime mck_temp matches ..200 run bossbar set rl1 name [{"translate":"lobby.bossbar.status2","color":"gray", "bold": true},{"nbt":"time[]","storage":"time","interpret":true,"color":"#DB4D37","bold":true,"separator":""}]