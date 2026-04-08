execute if data storage temp list2[0].tag.data.id run data modify storage tracks in_use append from storage temp list2[0].tag.data.id
execute if data storage temp list2[0].tag.data.id run data modify storage temp names append from storage temp list2[0].tag.data.icon.tag.display.Name

data remove storage temp list2[0]
execute if data storage temp list2[0] run function mck:resources/track_list2