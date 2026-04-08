execute if score @s mck_manager_call matches -200 run playsound custom:ringtone master @s ~ ~ ~ 1 1
execute if score @s mck_manager_call matches -120 run playsound custom:ringtone master @s ~ ~ ~ 1 1
execute if score @s mck_manager_call matches -105 run stopsound @s master custom:ringtone
execute if score @s mck_manager_call matches -104 run playsound custom:ringtone.pickup master @s ~ ~ ~ 1 1
execute if score @s mck_manager_call matches -104 run tag @s add phone_bar
execute if score @s mck_manager_call matches -100 store result score temp mck_temp run data get entity @s EnderItems[4].tag.stats.rank

execute if score @s mck_manager_call matches -100 if score @s mck_setting9 matches 0 if score temp mck_temp matches 1 run playsound custom:de.rankup.manager9 master @s[scores={mck_setting1=1}]
execute if score @s mck_manager_call matches -100 if score @s mck_setting9 matches 0 if score temp mck_temp matches 2 run playsound custom:de.rankup.manager8 master @s[scores={mck_setting1=1}]
execute if score @s mck_manager_call matches -100 if score @s mck_setting9 matches 0 if score temp mck_temp matches 3 run playsound custom:de.rankup.manager7 master @s[scores={mck_setting1=1}]
execute if score @s mck_manager_call matches -100 if score @s mck_setting9 matches 0 if score temp mck_temp matches 4 run playsound custom:de.rankup.manager6 master @s[scores={mck_setting1=1}]
execute if score @s mck_manager_call matches -100 if score @s mck_setting9 matches 0 if score temp mck_temp matches 5 run playsound custom:de.rankup.manager5 master @s[scores={mck_setting1=1}]
execute if score @s mck_manager_call matches -100 if score @s mck_setting9 matches 0 if score temp mck_temp matches 6 run playsound custom:de.rankup.manager4 master @s[scores={mck_setting1=1}]
execute if score @s mck_manager_call matches -100 if score @s mck_setting9 matches 0 if score temp mck_temp matches 7 run playsound custom:de.rankup.manager3 master @s[scores={mck_setting1=1}]
execute if score @s mck_manager_call matches -100 if score @s mck_setting9 matches 0 if score temp mck_temp matches 8 run playsound custom:de.rankup.manager2 master @s[scores={mck_setting1=1}]
execute if score @s mck_manager_call matches -100 if score @s mck_setting9 matches 0 if score temp mck_temp matches 9 run playsound custom:de.rankup.manager1 master @s[scores={mck_setting1=1}]

execute if score @s mck_manager_call matches -100 if score @s mck_setting9 matches 1 if score temp mck_temp matches 1 run playsound custom:en.rankup.manager9 master @s[scores={mck_setting1=1}]
execute if score @s mck_manager_call matches -100 if score @s mck_setting9 matches 1 if score temp mck_temp matches 2 run playsound custom:en.rankup.manager8 master @s[scores={mck_setting1=1}]
execute if score @s mck_manager_call matches -100 if score @s mck_setting9 matches 1 if score temp mck_temp matches 3 run playsound custom:en.rankup.manager7 master @s[scores={mck_setting1=1}]
execute if score @s mck_manager_call matches -100 if score @s mck_setting9 matches 1 if score temp mck_temp matches 4 run playsound custom:en.rankup.manager6 master @s[scores={mck_setting1=1}]
execute if score @s mck_manager_call matches -100 if score @s mck_setting9 matches 1 if score temp mck_temp matches 5 run playsound custom:en.rankup.manager5 master @s[scores={mck_setting1=1}]
execute if score @s mck_manager_call matches -100 if score @s mck_setting9 matches 1 if score temp mck_temp matches 6 run playsound custom:en.rankup.manager4 master @s[scores={mck_setting1=1}]
execute if score @s mck_manager_call matches -100 if score @s mck_setting9 matches 1 if score temp mck_temp matches 7 run playsound custom:en.rankup.manager3 master @s[scores={mck_setting1=1}]
execute if score @s mck_manager_call matches -100 if score @s mck_setting9 matches 1 if score temp mck_temp matches 8 run playsound custom:en.rankup.manager2 master @s[scores={mck_setting1=1}]
execute if score @s mck_manager_call matches -100 if score @s mck_setting9 matches 1 if score temp mck_temp matches 9 run playsound custom:en.rankup.manager1 master @s[scores={mck_setting1=1}]

execute if score @s mck_manager_call matches -1 run tag @s remove phone_bar




execute if score @s mck_manager_call matches 19 run playsound custom:ringtone master @s ~ ~ ~ 1 1
execute if score @s mck_manager_call matches 95 run stopsound @s master custom:ringtone
execute if score @s mck_manager_call matches 96 run playsound custom:ringtone.pickup master @s ~ ~ ~ 1 1
execute if score @s mck_manager_call matches 96 run tag @s add phone_bar
execute if score @s mck_manager_call matches 110 if score @s mck_setting9 matches 0 run playsound custom:de.lose.manager master @s[scores={mck_setting1=1}]
execute if score @s mck_manager_call matches 110 if score @s mck_setting9 matches 1 run playsound custom:en.lose.manager master @s[scores={mck_setting1=1}]
execute if score @s mck_manager_call matches 210 run tag @s remove phone_bar
execute if score @s mck_manager_call matches 210 run scoreboard players set @s mck_manager_call -1

execute if score @s mck_manager_call matches 419 run playsound custom:ringtone master @s ~ ~ ~ 1 1
execute if score @s mck_manager_call matches 495 run stopsound @s master custom:ringtone
execute if score @s mck_manager_call matches 496 run playsound custom:ringtone.pickup master @s ~ ~ ~ 1 1
execute if score @s mck_manager_call matches 496 run tag @s add phone_bar
execute if score @s mck_manager_call matches 510 if score @s mck_setting9 matches 0 run playsound custom:de.win.manager master @s[scores={mck_setting1=1}]
execute if score @s mck_manager_call matches 510 if score @s mck_setting9 matches 1 run playsound custom:en.win.manager master @s[scores={mck_setting1=1}]
execute if score @s mck_manager_call matches 610 run tag @s remove phone_bar
execute if score @s mck_manager_call matches 610 run scoreboard players set @s mck_manager_call -1



scoreboard players add @s mck_manager_call 1