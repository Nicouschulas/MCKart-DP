scoreboard players set temp mck_temp 0

execute positioned -4000128 170 -375 if entity @s[distance=..15] run scoreboard players set temp mck_temp 1
execute positioned -3999793 170 -313 if entity @s[distance=..15] run scoreboard players set temp mck_temp 2
execute positioned -4000003 170 -177 if entity @s[distance=..15] run scoreboard players set temp mck_temp 3
execute positioned -3999835 170 -100 if entity @s[distance=..15] run scoreboard players set temp mck_temp 4
execute positioned -3999766 170 -45 if entity @s[distance=..15] run scoreboard players set temp mck_temp 5
execute positioned -4000000 170 0 if entity @s[distance=..15] run scoreboard players set temp mck_temp 6


execute if score temp mck_temp matches 1.. run title @s times 0 10 4
execute if score temp mck_temp matches 1.. run title @s subtitle ""

execute if score temp mck_temp matches 1 run title @s subtitle {"translate":"warp.point1","color":"#91E3BD","bold":true,"italic":false}
execute if score temp mck_temp matches 2 run title @s subtitle {"translate":"warp.point2","color":"#E6F74A","bold":true,"italic":false}
execute if score temp mck_temp matches 3 run title @s subtitle {"translate":"warp.point3","color":"#F7AF99","bold":true,"italic":false}
execute if score temp mck_temp matches 4 run title @s subtitle {"translate":"warp.point4","color":"#F7F73E","bold":true,"italic":false}
execute if score temp mck_temp matches 5 run title @s subtitle {"translate":"warp.point5","color":"#FCF8B3","bold":true,"italic":false}
execute if score temp mck_temp matches 6 run title @s subtitle {"translate":"warp.point6","color":"#C4C0FC","bold":true,"italic":false}

execute if score temp mck_temp matches 1.. run title @s title ""

scoreboard players set clear mck_temp 0
data modify storage menu inv set from entity @s Inventory
execute unless data storage menu inv[{Slot:2b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{Slot:6b}] run scoreboard players set clear mck_temp 2
execute if score clear mck_temp matches 1.. run clear @s carrot_on_a_stick


item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"translate":"warp.warp","color":"#8CDDFF","bold":true,"italic":false}'},CustomModelData:11,killme:1b} 1
item replace entity @s hotbar.6 with carrot_on_a_stick{display:{Name:'{"translate":"warp.exit","color":"#FF9782","bold":true,"italic": false}'},killme:1b,CustomModelData:10} 1




execute store result score temp2 mck_temp run data get entity @s SelectedItemSlot

execute if score clear mck_temp matches 2 run scoreboard players set @s mck_use 1
execute if score clear mck_temp matches 2 run scoreboard players set temp2 mck_temp 6

execute if score temp2 mck_temp matches 6 if score @s mck_use matches 1.. run scoreboard players operation x mck_temp = @s mck_last_x
execute if score temp2 mck_temp matches 6 if score @s mck_use matches 1.. run scoreboard players operation y mck_temp = @s mck_last_y
execute if score temp2 mck_temp matches 6 if score @s mck_use matches 1.. run scoreboard players operation z mck_temp = @s mck_last_z
execute if score temp2 mck_temp matches 6 if score @s mck_use matches 1.. run function mck:player/score_tp
execute if score temp2 mck_temp matches 6 if score @s mck_use matches 1.. at @s run playsound ui.button.click master @s[scores={mck_setting1=1}] ~ ~ ~ 0.3 0.9



execute if score temp2 mck_temp matches 2 if score @s mck_use matches 1.. if score temp mck_temp matches 1 run tp @s -747.40 140.00 -1609.89 -210.43 -15.32
execute if score temp2 mck_temp matches 2 if score @s mck_use matches 1.. if score temp mck_temp matches 2 run tp @s 615.23 110.00 -1379.33 -1002.86 0.14
execute if score temp2 mck_temp matches 2 if score @s mck_use matches 1.. if score temp mck_temp matches 3 run tp @s -263.64 92.00 -839.68 -584.62 -3.56
execute if score temp2 mck_temp matches 2 if score @s mck_use matches 1.. if score temp mck_temp matches 4 run tp @s 423.05 72.00 -509.12 -810.91 -4.59
execute if score temp2 mck_temp matches 2 if score @s mck_use matches 1.. if score temp mck_temp matches 5 run tp @s 698.51 91.50 -294.91 -900.87 3.12
execute if score temp2 mck_temp matches 2 if score @s mck_use matches 1.. if score temp mck_temp matches 6 run tp @s -232.5 71 -113.5 180 0

execute if score temp2 mck_temp matches 2 if score @s mck_use matches 1.. if score temp mck_temp matches 1.. at @s run playsound entity.enderman.teleport master @s[scores={mck_setting1=1}] ~ ~ ~ 0.3 0.9

execute if score temp2 mck_temp matches 2 if score @s mck_use matches 1.. if score temp mck_temp matches 0 run scoreboard players reset @s mck_use


execute if score @s mck_use matches 1.. run clear @s carrot_on_a_stick
execute if score @s mck_use matches 1.. run effect clear @s speed
execute if score @s mck_use matches 1.. at @s run function mck:player/regions/update
execute if score @s mck_use matches 1.. run function mck:player/show_menu



execute if score @s mck_use matches 1.. run title @s times 0 20 10
execute if score @s mck_use matches 1.. run title @s subtitle ""
execute if score @s mck_use matches 1.. run title @s title "\ue000"


execute if score @s mck_use matches 1.. run stopsound @s ambient
execute if score @s mck_use matches 1.. at @s run function mck:player/regions/update
execute if score @s mck_use matches 1.. run scoreboard players set @s mck_region_timer 50