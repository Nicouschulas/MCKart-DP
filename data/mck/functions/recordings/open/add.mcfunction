function mck:recordings/open/remove


data remove storage temp open_recording
execute store result storage temp open_recording.id byte 1 run scoreboard players get lobbyid mck_temp
data modify storage temp open_recording.recording set from storage temp recording

data modify storage recordings ticks[0] append from storage temp open_recording