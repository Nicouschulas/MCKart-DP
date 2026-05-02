execute if data storage temp list2[0].components.id run data modify storage tracks in_use append from storage temp list2[0].components.id
execute if data storage temp list2[0].components.id run data modify storage temp names append from storage temp list2[0].components.icon.components.display.Name

data remove storage temp list2[0]
execute if data storage temp list2[0] run function mck:resources/track_list2