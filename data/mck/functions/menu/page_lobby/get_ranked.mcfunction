data modify storage temp list1 set from storage lobby ranked

function mck:menu/page_lobby/search

execute store result score temp mck_temp run data get storage temp out.players
execute if score sel mck_temp <= temp mck_temp run function mck:menu/page_lobby/get_player