function mck:lobby/sel_track/get_sel

# Falls keine Strecke ausgewählt wurde, versuche eine zufällige auszuwählen.
execute unless data storage tracks selections[0] run function mck:track/get_rng

item replace block 0 0 0 container.0 with paper 1
item modify block 0 0 0 container.0 mck:rng_1_64
execute store result score temp mck_temp run data get block 0 0 0 Items[0].Count
function mck:lobby/sel_track/get_rng

# Error falls wirklich keine gefunden werden kann
execute unless data storage tracks selections[0] as @a[scores={mck_lobby=1..}] if score @s mck_lobby = lobbyid mck_temp run tellraw @s [{"text":"[","color":"gray","bold":true},{"translate":"system","color":"gold","bold":false},{"text":"] "},{"translate":"lobby.start.error1","color":"red","bold":false}]

# Starte
execute if data storage tracks selections[0] store result score sel_track mck_sel_track run data get storage tracks selections[0]
execute if data storage tracks selections[0] run function mck:track/get
execute if data storage tracks selections[0] if data storage temp sel_track run data modify storage lobby ranked[0].track set from storage temp sel_track
execute if data storage tracks selections[0] if data storage temp sel_track run function mck:lobby/ranked/start/prepare

# Falls die Strecke nicht gefunden werden konnte
execute if data storage tracks selections[0] unless data storage temp sel_track as @a[scores={mck_lobby=1..}] if score @s mck_lobby = lobbyid mck_temp run tellraw @s [{"text":"[","color":"gray","bold":true},{"translate":"system","color":"gold","bold":false},{"text":"] "},{"translate":"lobby.start.error2","color":"red","bold":false}]