data modify storage temp pl1 set from storage temp list[0].name
data modify storage temp text append value '{"nbt":"pl1","storage":"temp","color":"#BCD5D6","bold":false}'
data modify storage temp text append from storage temp div
function mck:time/calc
data modify storage temp time set from storage time time
data modify storage temp text append value '{"nbt":"time[]","storage":"temp","interpret":true,"color":"white","bold":false,"separator":""}'