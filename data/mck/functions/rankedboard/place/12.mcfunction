data modify storage temp pl12 set from storage temp list[0].name
data modify storage temp text append value '{"components":[{"text":"","nbt":"pl12","storage":"temp","color":"#BCD5D6","bold":false}]}'
data modify storage temp text append from storage temp div
function mck:time/calc12
data modify storage temp time12 set from storage time time
data modify storage temp text append value '{"components":[{"text":"","nbt":"time12[]","storage":"temp","interpret":true,"color":"white","bold":false,"separator":""}]}'