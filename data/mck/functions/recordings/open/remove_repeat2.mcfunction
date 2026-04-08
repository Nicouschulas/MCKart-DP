execute store result score temp mck_temp run data get storage temp _list1[0].id
execute unless score temp mck_temp = lobbyid mck_temp run data modify storage temp _list2 append from storage temp _list1[0]

data remove storage temp _list1[0]
execute if data storage temp _list1[0] run function mck:recordings/open/remove_repeat2