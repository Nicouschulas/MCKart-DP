schedule function mck:lobby/loop 1s
# autodelay
execute if score automenudelay mck_admin_settings matches 1 run function mck:menu/auto_delay

execute store result score lobby_loops mck_temp run data get storage lobby normal
execute if score lobby_loops mck_temp matches 1.. run function mck:lobby/normal/normal

execute store result score lobby_loops mck_temp run data get storage lobby ranked
execute if score lobby_loops mck_temp matches 1.. run function mck:lobby/ranked/ranked


# phone bossbar
bossbar set phone players @a[tag=phone_bar]