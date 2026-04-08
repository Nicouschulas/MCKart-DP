scoreboard players set bool mck_temp 0
data modify storage temp list1 set from storage lobby races

function mck:player/recording/check_repeat

execute if score bool mck_temp matches 0 run data remove storage lobby recordings[0]

data modify storage lobby recordings append from storage lobby recordings[0]
data remove storage lobby recordings[0]


execute if data storage databases broadcast run function mck:chat/info