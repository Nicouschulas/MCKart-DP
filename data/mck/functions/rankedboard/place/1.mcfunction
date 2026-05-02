data modify storage temp pl1 set from storage temp list[0].name
data modify storage temp text append value '{"components":[{"text":"","nbt":"pl1","storage":"temp","color":"#BCD5D6","bold":false}]}'
function mck:time/calc
data modify storage temp time set from storage time time
data modify storage temp text append value '{"components":[{"text":"","nbt":"time[]","storage":"temp","interpret":true,"color":"white","bold":false,"separator":""}]}'