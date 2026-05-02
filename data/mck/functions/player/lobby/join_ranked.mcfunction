scoreboard players set join mck_temp 0
scoreboard players set locked mck_temp 0
scoreboard players set ingame mck_temp 0

scoreboard players set temp mck_temp 0
scoreboard players set temp2 mck_temp 0
scoreboard players set temp3 mck_temp 0


execute if score selected mck_temp matches 1 store result score temp mck_temp run data get storage lobby ranked[0].players
execute if score selected mck_temp matches 1 store result score temp2 mck_temp run data get storage lobby ranked[0].joinlocked
execute if score selected mck_temp matches 1 store result score temp3 mck_temp run data get storage lobby ranked[0].status
execute if score @s[mck_permission=2..] run scoreboard players set temp2 mck_temp 0
execute if score selected mck_temp matches 1 if score temp2 mck_temp matches 1 run scoreboard players set temp mck_temp 12
execute if score selected mck_temp matches 1 if score temp2 mck_temp matches 1 run scoreboard players set locked mck_temp 1
execute if score selected mck_temp matches 1 if score temp3 mck_temp matches 1.. run scoreboard players set temp mck_temp 12
execute if score selected mck_temp matches 1 if score temp3 mck_temp matches 1.. run scoreboard players set ingame mck_temp 1
execute if score selected mck_temp matches 1 if score temp mck_temp < maxplayersranked mck_admin_settings run data modify storage lobby ranked[0].players append from entity @s EnderItems[0].tag.playerdata
execute if score selected mck_temp matches 1 if score temp mck_temp < maxplayersranked mck_admin_settings store result score @s[mck_lobby] data get storage lobby ranked[0].id
execute if score selected mck_temp matches 1 if score temp mck_temp < maxplayersranked mck_admin_settings run scoreboard players set join mck_temp 1
execute if score selected mck_temp matches 1 if score temp mck_temp < maxplayersranked mck_admin_settings run data modify storage temp lobby set from storage lobby ranked[0]

execute if score selected mck_temp matches 2 store result score temp mck_temp run data get storage lobby ranked[1].players
execute if score selected mck_temp matches 2 store result score temp2 mck_temp run data get storage lobby ranked[1].joinlocked
execute if score selected mck_temp matches 2 store result score temp3 mck_temp run data get storage lobby ranked[1].status
execute if score @s[mck_permission=2..] run scoreboard players set temp2 mck_temp 0
execute if score selected mck_temp matches 2 if score temp2 mck_temp matches 1 run scoreboard players set temp mck_temp 12
execute if score selected mck_temp matches 2 if score temp2 mck_temp matches 1 run scoreboard players set locked mck_temp 1
execute if score selected mck_temp matches 2 if score temp3 mck_temp matches 1.. run scoreboard players set temp mck_temp 12
execute if score selected mck_temp matches 2 if score temp3 mck_temp matches 1.. run scoreboard players set ingame mck_temp 1
execute if score selected mck_temp matches 2 if score temp mck_temp < maxplayersranked mck_admin_settings run data modify storage lobby ranked[1].players append from entity @s EnderItems[0].tag.playerdata
execute if score selected mck_temp matches 2 if score temp mck_temp < maxplayersranked mck_admin_settings store result score @s[mck_lobby] data get storage lobby ranked[1].id
execute if score selected mck_temp matches 2 if score temp mck_temp < maxplayersranked mck_admin_settings run scoreboard players set join mck_temp 1
execute if score selected mck_temp matches 2 if score temp mck_temp < maxplayersranked mck_admin_settings run data modify storage temp lobby set from storage lobby ranked[1]

execute if score selected mck_temp matches 3 store result score temp mck_temp run data get storage lobby ranked[2].players
execute if score selected mck_temp matches 3 store result score temp2 mck_temp run data get storage lobby ranked[2].joinlocked
execute if score selected mck_temp matches 3 store result score temp3 mck_temp run data get storage lobby ranked[2].status
execute if score @s[mck_permission=2..] run scoreboard players set temp2 mck_temp 0
execute if score selected mck_temp matches 3 if score temp2 mck_temp matches 1 run scoreboard players set temp mck_temp 12
execute if score selected mck_temp matches 3 if score temp2 mck_temp matches 1 run scoreboard players set locked mck_temp 1
execute if score selected mck_temp matches 3 if score temp3 mck_temp matches 1.. run scoreboard players set temp mck_temp 12
execute if score selected mck_temp matches 3 if score temp3 mck_temp matches 1.. run scoreboard players set ingame mck_temp 1
execute if score selected mck_temp matches 3 if score temp mck_temp < maxplayersranked mck_admin_settings run data modify storage lobby ranked[2].players append from entity @s EnderItems[0].tag.playerdata
execute if score selected mck_temp matches 3 if score temp mck_temp < maxplayersranked mck_admin_settings store result score @s[mck_lobby] data get storage lobby ranked[2].id
execute if score selected mck_temp matches 3 if score temp mck_temp < maxplayersranked mck_admin_settings run scoreboard players set join mck_temp 1
execute if score selected mck_temp matches 3 if score temp mck_temp < maxplayersranked mck_admin_settings run data modify storage temp lobby set from storage lobby ranked[2]

execute if score selected mck_temp matches 4 store result score temp mck_temp run data get storage lobby ranked[3].players
execute if score selected mck_temp matches 4 store result score temp2 mck_temp run data get storage lobby ranked[3].joinlocked
execute if score selected mck_temp matches 4 store result score temp3 mck_temp run data get storage lobby ranked[3].status
execute if score @s[mck_permission=2..] run scoreboard players set temp2 mck_temp 0
execute if score selected mck_temp matches 4 if score temp2 mck_temp matches 1 run scoreboard players set temp mck_temp 12
execute if score selected mck_temp matches 4 if score temp2 mck_temp matches 1 run scoreboard players set locked mck_temp 1
execute if score selected mck_temp matches 4 if score temp3 mck_temp matches 1.. run scoreboard players set temp mck_temp 12
execute if score selected mck_temp matches 4 if score temp3 mck_temp matches 1.. run scoreboard players set ingame mck_temp 1
execute if score selected mck_temp matches 4 if score temp mck_temp < maxplayersranked mck_admin_settings run data modify storage lobby ranked[3].players append from entity @s EnderItems[0].tag.playerdata
execute if score selected mck_temp matches 4 if score temp mck_temp < maxplayersranked mck_admin_settings store result score @s[mck_lobby] data get storage lobby ranked[3].id
execute if score selected mck_temp matches 4 if score temp mck_temp < maxplayersranked mck_admin_settings run scoreboard players set join mck_temp 1
execute if score selected mck_temp matches 4 if score temp mck_temp < maxplayersranked mck_admin_settings run data modify storage temp lobby set from storage lobby ranked[3]

execute if score selected mck_temp matches 5 store result score temp mck_temp run data get storage lobby ranked[4].players
execute if score selected mck_temp matches 5 store result score temp2 mck_temp run data get storage lobby ranked[4].joinlocked
execute if score selected mck_temp matches 5 store result score temp3 mck_temp run data get storage lobby ranked[4].status
execute if score @s[mck_permission=2..] run scoreboard players set temp2 mck_temp 0
execute if score selected mck_temp matches 5 if score temp2 mck_temp matches 1 run scoreboard players set temp mck_temp 12
execute if score selected mck_temp matches 5 if score temp2 mck_temp matches 1 run scoreboard players set locked mck_temp 1
execute if score selected mck_temp matches 5 if score temp3 mck_temp matches 1.. run scoreboard players set temp mck_temp 12
execute if score selected mck_temp matches 5 if score temp3 mck_temp matches 1.. run scoreboard players set ingame mck_temp 1
execute if score selected mck_temp matches 5 if score temp mck_temp < maxplayersranked mck_admin_settings run data modify storage lobby ranked[4].players append from entity @s EnderItems[0].tag.playerdata
execute if score selected mck_temp matches 5 if score temp mck_temp < maxplayersranked mck_admin_settings store result score @s[mck_lobby] data get storage lobby ranked[4].id
execute if score selected mck_temp matches 5 if score temp mck_temp < maxplayersranked mck_admin_settings run scoreboard players set join mck_temp 1
execute if score selected mck_temp matches 5 if score temp mck_temp < maxplayersranked mck_admin_settings run data modify storage temp lobby set from storage lobby ranked[4]

execute if score selected mck_temp matches 6 store result score temp mck_temp run data get storage lobby ranked[5].players
execute if score selected mck_temp matches 6 store result score temp2 mck_temp run data get storage lobby ranked[5].joinlocked
execute if score selected mck_temp matches 6 store result score temp3 mck_temp run data get storage lobby ranked[5].status
execute if score @s[mck_permission=2..] run scoreboard players set temp2 mck_temp 0
execute if score selected mck_temp matches 6 if score temp2 mck_temp matches 1 run scoreboard players set temp mck_temp 12
execute if score selected mck_temp matches 6 if score temp2 mck_temp matches 1 run scoreboard players set locked mck_temp 1
execute if score selected mck_temp matches 6 if score temp3 mck_temp matches 1.. run scoreboard players set temp mck_temp 12
execute if score selected mck_temp matches 6 if score temp3 mck_temp matches 1.. run scoreboard players set ingame mck_temp 1
execute if score selected mck_temp matches 6 if score temp mck_temp < maxplayersranked mck_admin_settings run data modify storage lobby ranked[5].players append from entity @s EnderItems[0].tag.playerdata
execute if score selected mck_temp matches 6 if score temp mck_temp < maxplayersranked mck_admin_settings store result score @s[mck_lobby] data get storage lobby ranked[5].id
execute if score selected mck_temp matches 6 if score temp mck_temp < maxplayersranked mck_admin_settings run scoreboard players set join mck_temp 1
execute if score selected mck_temp matches 6 if score temp mck_temp < maxplayersranked mck_admin_settings run data modify storage temp lobby set from storage lobby ranked[5]

execute if score selected mck_temp matches 7 store result score temp mck_temp run data get storage lobby ranked[6].players
execute if score selected mck_temp matches 7 store result score temp2 mck_temp run data get storage lobby ranked[6].joinlocked
execute if score selected mck_temp matches 7 store result score temp3 mck_temp run data get storage lobby ranked[6].status
execute if score @s[mck_permission=2..] run scoreboard players set temp2 mck_temp 0
execute if score selected mck_temp matches 7 if score temp2 mck_temp matches 1 run scoreboard players set temp mck_temp 12
execute if score selected mck_temp matches 7 if score temp2 mck_temp matches 1 run scoreboard players set locked mck_temp 1
execute if score selected mck_temp matches 7 if score temp3 mck_temp matches 1.. run scoreboard players set temp mck_temp 12
execute if score selected mck_temp matches 7 if score temp3 mck_temp matches 1.. run scoreboard players set ingame mck_temp 1
execute if score selected mck_temp matches 7 if score temp mck_temp < maxplayersranked mck_admin_settings run data modify storage lobby ranked[6].players append from entity @s EnderItems[0].tag.playerdata
execute if score selected mck_temp matches 7 if score temp mck_temp < maxplayersranked mck_admin_settings store result score @s[mck_lobby] data get storage lobby ranked[6].id
execute if score selected mck_temp matches 7 if score temp mck_temp < maxplayersranked mck_admin_settings run scoreboard players set join mck_temp 1
execute if score selected mck_temp matches 7 if score temp mck_temp < maxplayersranked mck_admin_settings run data modify storage temp lobby set from storage lobby ranked[6]

execute if score selected mck_temp matches 8 store result score temp mck_temp run data get storage lobby ranked[7].players
execute if score selected mck_temp matches 8 store result score temp2 mck_temp run data get storage lobby ranked[7].joinlocked
execute if score selected mck_temp matches 8 store result score temp3 mck_temp run data get storage lobby ranked[7].status
execute if score @s[mck_permission=2..] run scoreboard players set temp2 mck_temp 0
execute if score selected mck_temp matches 8 if score temp2 mck_temp matches 1 run scoreboard players set temp mck_temp 12
execute if score selected mck_temp matches 8 if score temp2 mck_temp matches 1 run scoreboard players set locked mck_temp 1
execute if score selected mck_temp matches 8 if score temp3 mck_temp matches 1.. run scoreboard players set temp mck_temp 12
execute if score selected mck_temp matches 8 if score temp3 mck_temp matches 1.. run scoreboard players set ingame mck_temp 1
execute if score selected mck_temp matches 8 if score temp mck_temp < maxplayersranked mck_admin_settings run data modify storage lobby ranked[7].players append from entity @s EnderItems[0].tag.playerdata
execute if score selected mck_temp matches 8 if score temp mck_temp < maxplayersranked mck_admin_settings store result score @s[mck_lobby] data get storage lobby ranked[7].id
execute if score selected mck_temp matches 8 if score temp mck_temp < maxplayersranked mck_admin_settings run scoreboard players set join mck_temp 1
execute if score selected mck_temp matches 8 if score temp mck_temp < maxplayersranked mck_admin_settings run data modify storage temp lobby set from storage lobby ranked[7]

execute if score selected mck_temp matches 9 store result score temp mck_temp run data get storage lobby ranked[8].players
execute if score selected mck_temp matches 9 store result score temp2 mck_temp run data get storage lobby ranked[8].joinlocked
execute if score selected mck_temp matches 9 store result score temp3 mck_temp run data get storage lobby ranked[8].status
execute if score @s[mck_permission=2..] run scoreboard players set temp2 mck_temp 0
execute if score selected mck_temp matches 9 if score temp2 mck_temp matches 1 run scoreboard players set temp mck_temp 12
execute if score selected mck_temp matches 9 if score temp2 mck_temp matches 1 run scoreboard players set locked mck_temp 1
execute if score selected mck_temp matches 9 if score temp3 mck_temp matches 1.. run scoreboard players set temp mck_temp 12
execute if score selected mck_temp matches 9 if score temp3 mck_temp matches 1.. run scoreboard players set ingame mck_temp 1
execute if score selected mck_temp matches 9 if score temp mck_temp < maxplayersranked mck_admin_settings run data modify storage lobby ranked[8].players append from entity @s EnderItems[0].tag.playerdata
execute if score selected mck_temp matches 9 if score temp mck_temp < maxplayersranked mck_admin_settings store result score @s[mck_lobby] data get storage lobby ranked[8].id
execute if score selected mck_temp matches 9 if score temp mck_temp < maxplayersranked mck_admin_settings run scoreboard players set join mck_temp 1
execute if score selected mck_temp matches 9 if score temp mck_temp < maxplayersranked mck_admin_settings run data modify storage temp lobby set from storage lobby ranked[8]


execute if score join mck_temp matches 1 as @a[tag=!nomenu,tag=!builder] run function mck:menu/draw
execute if score join mck_temp matches 1 run function mck:menu/unselect_track
execute if score join mck_temp matches 1 run scoreboard players set @s[mck_lobby_type=1]
execute if score join mck_temp matches 1 run scoreboard players operation @s[mck_spec_lobby] = @s[mck_lobby]

execute if score join mck_temp matches 1 run tag @s add notme
execute if score join mck_temp matches 1 run data modify storage temp name set from entity @s EnderItems[1].tag.SkullOwner.Name
execute if score join mck_temp matches 1 run scoreboard players operation temp mck_temp = @s[mck_lobby]
execute if score join mck_temp matches 1 run execute as @a[scores={mck_lobby=1..},tag=!notme] if score @s[mck_lobby] = temp mck_temp run tellraw @s [{"text":"[","color":"gray","bold":true},{"translate":"system","color":"gold","bold":false},{"text":"] "},{"nbt":"name","storage":"temp","color":"#FFDEA6","bold":false,"italic":false},{"translate":"chat.alert.join_lobby","color":"#D4D4D4","bold":false,"italic":false}]
execute if score join mck_temp matches 1 run tag @s remove notme
execute if score join mck_temp matches 1 run tellraw @s [{"text":"[","color":"gray","bold":true},{"translate":"system","color":"gold","bold":false},{"text":"] "},{"translate":"chat.alert.you_joined_lobby","color":"#D4D4D4","bold":false,"italic":false}]

execute if score join mck_temp matches 1 store result score @s[mck_lobby_setting1] run data get storage temp lobby.joinlocked
execute if score join mck_temp matches 1 store result score @s[mck_lobby_setting2] run data get storage temp lobby.locked
execute if score join mck_temp matches 1 store result score @s[mck_lobby_setting3] run data get storage temp lobby.autokick
execute if score join mck_temp matches 1 store result score @s[mck_lobby_setting5] run data get storage temp lobby.bots
execute if score join mck_temp matches 1 run playsound minecraft:entity.player.levelup master @s[scores={mck_setting1=1}] ~ ~ ~ 1 1.2
execute if score join mck_temp matches 0 if score temp mck_temp >= maxplayersranked mck_admin_settings if score locked mck_temp matches 0 if score ingame mck_temp matches 0 run tellraw @s [{"text":"[","color":"gray","bold":true},{"translate":"system","color":"gold","bold":false},{"text":"] "},{"translate":"menu.page.play.full","color":"red","bold":false}]
execute if score join mck_temp matches 0 if score temp mck_temp >= maxplayersranked mck_admin_settings if score locked mck_temp matches 1 if score ingame mck_temp matches 0 run tellraw @s [{"text":"[","color":"gray","bold":true},{"translate":"system","color":"gold","bold":false},{"text":"] "},{"translate":"menu.page.play.locked","color":"red","bold":false}]
execute if score join mck_temp matches 0 if score temp mck_temp >= maxplayersranked mck_admin_settings if score ingame mck_temp matches 1 run tellraw @s [{"text":"[","color":"gray","bold":true},{"translate":"system","color":"gold","bold":false},{"text":"] "},{"translate":"menu.page.play.ingame","color":"red","bold":false}]