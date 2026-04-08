data modify storage temp pl11 set from storage temp list[0].name
data modify storage temp text append value '{"nbt":"pl11","storage":"temp","color":"#BCD5D6","bold":false}'
data modify storage temp text append from storage temp div
function mck:time/calc11
data modify storage temp time11 set from storage time time
data modify storage temp text append value '{"nbt":"time11[]","storage":"temp","interpret":true,"color":"white","bold":false,"separator":""}'