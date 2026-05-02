data modify storage temp pl10 set from storage temp list[0].name
data modify storage temp text append value '{"components":[{"text":"","nbt":"pl10","storage":"temp","color":"#BCD5D6","bold":false}]}'
data modify storage temp text append from storage temp div
function mck:time/calc10
data modify storage temp time10 set from storage time time
data modify storage temp text append value '{"components":[{"text":"","nbt":"time10[]","storage":"temp","interpret":true,"color":"white","bold":false,"separator":""}]}'