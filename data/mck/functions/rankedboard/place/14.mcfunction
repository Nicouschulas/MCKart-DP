data modify storage temp pl14 set from storage temp list[0].name
data modify storage temp text append value '{"nbt":"pl14","storage":"temp","color":"#BCD5D6","bold":false}'
data modify storage temp text append from storage temp div
function mck:time/calc14
data modify storage temp time14 set from storage time time
data modify storage temp text append value '{"nbt":"time14[]","storage":"temp","interpret":true,"color":"white","bold":false,"separator":""}'