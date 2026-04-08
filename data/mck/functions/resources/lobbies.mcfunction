scoreboard players set lobby_id mck_id 0

data remove storage lobby normal
execute store result score temp mck_temp run data get block 0 1 0 Items[0].Count
function mck:resources/lobby_normal

data remove storage lobby ranked
execute store result score temp mck_temp run data get block 0 2 0 Items[0].Count
function mck:resources/lobby_ranked

data remove storage lobby temp