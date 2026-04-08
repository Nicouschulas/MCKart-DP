# prozent = 100 - (100 / Max Players * (Place - 1))

scoreboard players set temp mck_temp 100
scoreboard players operation temp mck_temp /= @s mck_players

scoreboard players operation temp2 mck_temp = @s mck_place
scoreboard players remove temp2 mck_temp 1

scoreboard players operation temp mck_temp *= temp2 mck_temp

scoreboard players set prozent mck_temp 100
scoreboard players operation prozent mck_temp -= temp mck_temp

data remove storage temp table


# ID 1 - Pilz
execute if score prozent mck_temp matches 0..100 run data modify storage temp table append value 1
execute if score prozent mck_temp matches 0..100 run data modify storage temp table append value 1
execute if score prozent mck_temp matches 0..100 run data modify storage temp table append value 1

# ID 2 - 3x Pilz
execute if score prozent mck_temp matches 0..90 run data modify storage temp table append value 2
execute if score prozent mck_temp matches 0..90 run data modify storage temp table append value 2

# ID 3 - Banane
execute if score prozent mck_temp matches 40..100 run data modify storage temp table append value 3
execute if score prozent mck_temp matches 40..100 run data modify storage temp table append value 3
execute if score prozent mck_temp matches 40..100 run data modify storage temp table append value 3

# ID 4 - 3x Banane
execute if score prozent mck_temp matches 50..100 run data modify storage temp table append value 4
execute if score prozent mck_temp matches 50..100 run data modify storage temp table append value 4

# ID 5 - Feuerblume
execute if score prozent mck_temp matches 20..95 run data modify storage temp table append value 5
execute if score prozent mck_temp matches 20..95 run data modify storage temp table append value 5

# ID 6 - Blauer Panzer
execute if score prozent mck_temp matches 0..40 run data modify storage temp table append value 6
execute if score prozent mck_temp matches 0..40 run data modify storage temp table append value 6

# ID 7 - Roter Panzer
execute if score prozent mck_temp matches 40..100 run data modify storage temp table append value 7
execute if score prozent mck_temp matches 40..100 run data modify storage temp table append value 7
execute if score prozent mck_temp matches 40..100 run data modify storage temp table append value 7

# ID 8 - 3x Roter Panzer
execute if score prozent mck_temp matches 0..50 run data modify storage temp table append value 8

# ID 9 - Blitz
execute if score prozent mck_temp matches 0..49 run data modify storage temp table append value 9

# ID 10 - Tintenfisch
execute if score prozent mck_temp matches 50..80 run data modify storage temp table append value 10
execute if score prozent mck_temp matches 50..80 run data modify storage temp table append value 10

# ID 11 - Bombe
execute if score prozent mck_temp matches 50..100 run data modify storage temp table append value 11
execute if score prozent mck_temp matches 50..100 run data modify storage temp table append value 11
execute if score prozent mck_temp matches 50..100 run data modify storage temp table append value 11

# ID 12 - 3x Bombe
execute if score prozent mck_temp matches 60..100 run data modify storage temp table append value 12
execute if score prozent mck_temp matches 60..100 run data modify storage temp table append value 12

# ID 13 - Superstern
execute if score prozent mck_temp matches 0..49 run data modify storage temp table append value 13
execute if score prozent mck_temp matches 0..49 run data modify storage temp table append value 13

# ID 14 - Biberschwanz
execute if score prozent mck_temp matches 60..100 run data modify storage temp table append value 14
execute if score prozent mck_temp matches 60..100 run data modify storage temp table append value 14

# ID 15 - Röhre
execute if score prozent mck_temp matches 0..20 if score @s mck_place_pre matches 0 run data modify storage temp table append value 15

# ID 16 - Goldpilz
execute if score prozent mck_temp matches 0..70 run data modify storage temp table append value 16

# ID 17 - Münze
execute if score prozent mck_temp matches 0..100 run data modify storage temp table append value 17

# ID 18 - Fake-Itembox
execute if score prozent mck_temp matches 30..100 run data modify storage temp table append value 18
execute if score prozent mck_temp matches 30..100 run data modify storage temp table append value 18


item replace block 0 0 0 container.0 with paper 1
item modify block 0 0 0 container.0 mck:rng_1_18
execute store result score count mck_temp run data get block 0 0 0 Items[0].Count
function mck:player/item/shuffle