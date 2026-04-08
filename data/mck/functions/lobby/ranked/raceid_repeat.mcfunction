execute store result score temp mck_temp run data get storage temp list1[0]
execute unless score temp mck_temp = lobbyraceid mck_temp run data modify storage temp list2 append from storage temp list1[0]
data remove storage temp list1[0]
execute if data storage temp list1[0] run function mck:lobby/ranked/raceid_repeat