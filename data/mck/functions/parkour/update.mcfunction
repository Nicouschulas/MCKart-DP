execute store result score time mck_time run data get storage databases parkour.best_time
execute if score time mck_time matches 999999999.. run scoreboard players set time mck_time 0
function mck:time/calc


data modify entity @e[type=text_display,tag=mck_parkour_best,limit=1] text set value '[{"translate":"parkour.best","color":"#C8FFB0","bold":true},{"text":"\\n\\n"},{"nbt":"parkour.best_name","storage":"databases","color":"#EAF0E6","bold":false},{"text":"\\n"},{"nbt":"time[]","storage":"time","interpret":true,"color":"#C4C9C1","bold":false,"separator":""}]'