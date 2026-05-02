# set trafficlights
data modify storage temp trafficlights set from storage lobby normal[0].track.tag.data.trafficlights
execute store result score angle mck_temp run data get storage lobby normal[0].track.tag.data.startangle

execute if score lobbystarttime mck_temp matches 8 run function mck:track/set_lights_-1
execute if score lobbystarttime mck_temp matches 8 run function mck:track/set_lights_0
execute if score lobbystarttime mck_temp matches 5 run function mck:track/set_lights_5
execute if score lobbystarttime mck_temp matches 4 run function mck:track/set_lights_4
execute if score lobbystarttime mck_temp matches 3 run function mck:track/set_lights_3
execute if score lobbystarttime mck_temp matches 2 run function mck:track/set_lights_2
execute if score lobbystarttime mck_temp matches 1 run function mck:track/set_lights_1
execute if score lobbystarttime mck_temp matches 0 run function mck:track/set_lights_go

execute if score lobbystarttime mck_temp matches 0 run data modify storage temp recording set from storage lobby normal[0].recording
execute if score lobbystarttime mck_temp matches 0 if data storage temp recording[0] run function mck:recordings/open/add

execute if score lobbystarttime mck_temp matches 0 run scoreboard players set lobbystatus mck_temp 2
execute if score lobbystarttime mck_temp matches 0 store result score lobbygametime mck_temp run data get storage lobby normal[0].track.tag.data.maxtime
execute if score lobbystarttime mck_temp matches 0 store result score lobbysafetime mck_temp run data get storage lobby normal[0].track.tag.data.safetime
execute if score lobbystarttime mck_temp matches 0 run function mck:bossbar/n_prepare_status2

execute if score lobbystarttime mck_temp matches 1.. if score lobbystatus mck_temp matches 1 run scoreboard players remove lobbystarttime mck_temp 1
function mck:bossbar/n_status1