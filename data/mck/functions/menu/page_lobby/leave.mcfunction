scoreboard players set @s mck_lobby 0
scoreboard players set @s mck_spec_lobby 0
scoreboard players set @s mck_page 0
scoreboard players set @s mck_sel_track 0
scoreboard players reset @s mck_track
scoreboard players set clear mck_temp 2
tellraw @s [{"text":"[","color":"gray","bold":true},{"translate":"system","color":"gold","bold":false},{"text":"] "},{"translate":"chat.alert.leave_lobby","color":"red","bold":false}]