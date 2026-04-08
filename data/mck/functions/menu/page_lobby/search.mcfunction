execute store result score temp mck_temp run data get storage temp list1[0].id

execute if score temp mck_temp = @s mck_lobby run data modify storage temp out set from storage temp list1[0]
execute if score temp mck_temp = @s mck_lobby run data remove storage temp list1

data remove storage temp list1[0]
execute if data storage temp list1[0] run function mck:menu/page_lobby/search