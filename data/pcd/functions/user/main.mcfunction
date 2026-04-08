scoreboard players operation old.slot pcd.selected_slot = @s pcd.selected_slot
execute store result score @s pcd.selected_slot run data get entity @s SelectedItemSlot
scoreboard players operation old.slot pcd.selected_slot -= @s pcd.selected_slot

execute unless score old.slot pcd.selected_slot matches 0 run clear @s carrot_on_a_stick
execute unless score old.slot pcd.selected_slot matches 0 run item replace entity @s weapon.mainhand with carrot_on_a_stick

execute if score old.slot pcd.selected_slot matches -2..-1 unless score @s pcd.sneak matches 1.. run scoreboard players add @s pcd.menu_point 1
execute if score old.slot pcd.selected_slot matches 1..2 unless score @s pcd.sneak matches 1.. run scoreboard players remove @s pcd.menu_point 1
execute if score old.slot pcd.selected_slot matches 7.. unless score @s pcd.sneak matches 1.. run scoreboard players add @s pcd.menu_point 1
execute if score old.slot pcd.selected_slot matches ..-7 unless score @s pcd.sneak matches 1.. run scoreboard players remove @s pcd.menu_point 1

execute if score old.slot pcd.selected_slot matches -2..-1 if score @s pcd.sneak matches 1.. run scoreboard players add @s pcd.menu 1
execute if score old.slot pcd.selected_slot matches 1..2 if score @s pcd.sneak matches 1.. run scoreboard players remove @s pcd.menu 1
execute if score old.slot pcd.selected_slot matches 7.. if score @s pcd.sneak matches 1.. run scoreboard players add @s pcd.menu 1
execute if score old.slot pcd.selected_slot matches ..-7 if score @s pcd.sneak matches 1.. run scoreboard players remove @s pcd.menu 1

execute if score @s pcd.menu_point matches ..0 run scoreboard players set @s pcd.menu_point 1
execute if score @s pcd.menu matches 1 if score @s pcd.menu_point matches 6.. run scoreboard players set @s pcd.menu_point 5
execute if score @s pcd.menu matches 2 if score @s pcd.menu_point matches 5.. run scoreboard players set @s pcd.menu_point 4
execute if score @s pcd.menu matches 3 if score @s pcd.menu_point matches 4.. run scoreboard players set @s pcd.menu_point 3
execute if score @s pcd.menu matches ..0 run scoreboard players set @s pcd.menu 1
execute if score @s pcd.menu matches 4.. run scoreboard players set @s pcd.menu 3

execute if score @s pcd.menu matches 1 if score @s pcd.menu_point matches 1 unless score @s pcd.sneak matches 1.. run title @s actionbar [{"text": "Add Point   ","bold": true, "color": "dark_green"}, {"text": "Move Point   ","bold": false, "color": "gray"}, {"text": "Remove Points   ","bold": false, "color": "gray"}, {"text": "Render   ","bold": false, "color": "gray"}, {"text": "Preview","bold": false, "color": "gray"}]
execute if score @s pcd.menu matches 1 if score @s pcd.menu_point matches 2 unless score @s pcd.sneak matches 1.. run title @s actionbar [{"text": "Add Point   ","bold": false, "color": "gray"}, {"text": "Move Point   ","bold": true, "color": "gold"}, {"text": "Remove Points   ","bold": false, "color": "gray"}, {"text": "Render   ","bold": false, "color": "gray"}, {"text": "Preview","bold": false, "color": "gray"}]
execute if score @s pcd.menu matches 1 if score @s pcd.menu_point matches 3 unless score @s pcd.sneak matches 1.. unless entity @s[x_rotation=90] run title @s actionbar [{"text": "Add Point   ","bold": false, "color": "gray"}, {"text": "Move Point   ","bold": false, "color": "gray"}, {"text": "Remove Points   ","bold": true, "color": "red"}, {"text": "Render   ","bold": false, "color": "gray"}, {"text": "Preview","bold": false, "color": "gray"}]
execute if score @s pcd.menu matches 1 if score @s pcd.menu_point matches 3 unless score @s pcd.sneak matches 1.. if entity @s[x_rotation=90] run title @s actionbar [{"text": "Add Point   ","bold": false, "color": "gray"}, {"text": "Move Point   ","bold": false, "color": "gray"}, {"text": "Remove NEAREST Point   ","bold": true, "color": "red"}, {"text": "Render   ","bold": false, "color": "gray"}, {"text": "Preview","bold": false, "color": "gray"}]
execute if score @s pcd.menu matches 1 if score @s pcd.menu_point matches 4 unless score @s pcd.sneak matches 1.. run title @s actionbar [{"text": "Add Point   ","bold": false, "color": "gray"}, {"text": "Move Point   ","bold": false, "color": "gray"}, {"text": "Remove Points   ","bold": false, "color": "gray"}, {"text": "Render   ","bold": true, "color": "aqua"}, {"text": "Preview","bold": false, "color": "gray"}]
execute if score @s pcd.menu matches 1 if score @s pcd.menu_point matches 5 unless score @s pcd.sneak matches 1.. run title @s actionbar [{"text": "Add Point   ","bold": false, "color": "gray"}, {"text": "Move Point   ","bold": false, "color": "gray"}, {"text": "Remove Points   ","bold": false, "color": "gray"}, {"text": "Render   ","bold": false, "color": "gray"}, {"text": "Preview","bold": true, "color": "white"}]

execute if score @s pcd.menu matches 2 if score @s pcd.menu_point matches 1 unless score @s pcd.sneak matches 1.. run title @s actionbar [{"text": "Change Fadeout Title   ","bold": true, "color": "gold"}, {"text": "Change Title Settings   ","bold": false, "color": "gray"}, {"text": "Change Settings   ","bold": false, "color": "gray"}, {"text": "Reset Workspace","bold": false, "color": "gray"}]
execute if score @s pcd.menu matches 2 if score @s pcd.menu_point matches 2 unless score @s pcd.sneak matches 1.. run title @s actionbar [{"text": "Change Fadeout Title   ","bold": false, "color": "gray"}, {"text": "Change Title Settings   ","bold": true, "color": "green"}, {"text": "Change Settings   ","bold": false, "color": "gray"}, {"text": "Reset Workspace","bold": false, "color": "gray"}]
execute if score @s pcd.menu matches 2 if score @s pcd.menu_point matches 3 unless score @s pcd.sneak matches 1.. run title @s actionbar [{"text": "Change Fadeout Title   ","bold": false, "color": "gray"}, {"text": "Change Title Settings   ","bold": false, "color": "gray"}, {"text": "Change Settings   ","bold": true, "color": "aqua"}, {"text": "Reset Workspace","bold": false, "color": "gray"}]
execute if score @s pcd.menu matches 2 if score @s pcd.menu_point matches 4 unless score @s pcd.sneak matches 1.. run title @s actionbar [{"text": "Change Fadeout Title   ","bold": false, "color": "gray"}, {"text": "Change Title Settings   ","bold": false, "color": "gray"}, {"text": "Change Settings   ","bold": true, "color": "gray"}, {"text": "Reset Workspace","bold": true, "color": "red"}]

execute if score @s pcd.menu matches 3 if score @s pcd.menu_point matches 1 unless score @s pcd.sneak matches 1.. run title @s actionbar [{"text": "Save   ","bold": true, "color": "dark_green"}, {"text": "Load   ","bold": false, "color": "gray"}, {"text": "Delete","bold": false, "color": "gray"}]
execute if score @s pcd.menu matches 3 if score @s pcd.menu_point matches 2 unless score @s pcd.sneak matches 1.. run title @s actionbar [{"text": "Save   ","bold": false, "color": "gray"}, {"text": "Load   ","bold": true, "color": "aqua"}, {"text": "Delete","bold": false, "color": "gray"}]
execute if score @s pcd.menu matches 3 if score @s pcd.menu_point matches 3 unless score @s pcd.sneak matches 1.. run title @s actionbar [{"text": "Save   ","bold": false, "color": "gray"}, {"text": "Load   ","bold": false, "color": "gray"}, {"text": "Delete","bold": true, "color": "red"}]

execute if score @s pcd.menu matches 1 if score @s pcd.sneak matches 1.. run title @s actionbar [{"text": "Edit   ","bold": true, "color": "gold"}, {"text": "Settings   ","bold": false, "color": "gray"}, {"text": "File","bold": false, "color": "gray"}]
execute if score @s pcd.menu matches 2 if score @s pcd.sneak matches 1.. run title @s actionbar [{"text": "Edit   ","bold": false, "color": "gray"}, {"text": "Settings   ","bold": true, "color": "aqua"}, {"text": "File","bold": false, "color": "gray"}]
execute if score @s pcd.menu matches 3 if score @s pcd.sneak matches 1.. run title @s actionbar [{"text": "Edit   ","bold": false, "color": "gray"}, {"text": "Settings   ","bold": false, "color": "gray"}, {"text": "File","bold": true, "color": "white"}]



execute if score @s pcd.use matches 1.. if score @s pcd.menu matches 1 if score @s pcd.menu_point matches 1 run data remove storage pcd:temp frame
execute if score @s pcd.use matches 1.. if score @s pcd.menu matches 1 if score @s pcd.menu_point matches 1 run data modify storage pcd:temp frame.pos set from entity @s Pos
execute if score @s pcd.use matches 1.. if score @s pcd.menu matches 1 if score @s pcd.menu_point matches 1 run data modify storage pcd:temp frame.rot set from entity @s Rotation
execute if score @s pcd.use matches 1.. if score @s pcd.menu matches 1 if score @s pcd.menu_point matches 1 run data modify storage pcd:workspace data.workspace append from storage pcd:temp frame

execute if score @s pcd.use matches 1.. if score @s pcd.menu matches 1 if score @s pcd.menu_point matches 2 run function pcd:user/move_point/main

execute if score @s pcd.use matches 1.. if score @s pcd.menu matches 1 if score @s pcd.menu_point matches 3 unless entity @s[x_rotation=90] run data modify storage pcd:workspace data.workspace set value []
execute if score @s pcd.use matches 1.. if score @s pcd.menu matches 1 if score @s pcd.menu_point matches 3 unless entity @s[x_rotation=90] run data modify storage pcd:workspace data.render set value []
execute if score @s pcd.use matches 1.. if score @s pcd.menu matches 1 if score @s pcd.menu_point matches 3 if entity @s[x_rotation=90] run function pcd:user/remove_point/main

execute if score @s pcd.use matches 1.. if score @s pcd.menu matches 1 if score @s pcd.menu_point matches 4 run function pcd:render/start

execute if score @s pcd.use matches 1.. if score @s pcd.menu matches 1 if score @s pcd.menu_point matches 5 run data modify storage pcd:database load set value ["pcd.workspace"]
execute if score @s pcd.use matches 1.. if score @s pcd.menu matches 1 if score @s pcd.menu_point matches 5 run function pcd.user:start


execute if score @s pcd.use matches 1.. if score @s pcd.menu matches 2 if score @s pcd.menu_point matches 1 run tellraw @s {"text":"[Click to change: Fadeout Title]","color":"white","bold":true,"clickEvent":{"action":"suggest_command","value":"/data modify storage pcd:workspace data.fadeouttitle merge value {subtitle:'{\"text\":\"\"}', title:'{\"text\":\"\"}' }"}}
execute if score @s pcd.use matches 1.. if score @s pcd.menu matches 2 if score @s pcd.menu_point matches 2 run function pcd:user/tellraw_title with storage pcd:workspace data.fadeouttitle
execute if score @s pcd.use matches 1.. if score @s pcd.menu matches 2 if score @s pcd.menu_point matches 3 run function pcd:user/tellraw_settings with storage pcd:workspace data.settings
execute if score @s pcd.use matches 1.. if score @s pcd.menu matches 2 if score @s pcd.menu_point matches 4 run data modify storage pcd:workspace data set value { name:"Untitled", settings:{ length:0, fadeouttitle:0b }, fadeouttitle:{ frame:0, fadein:0, stay:0, fadeout:0, subtitle:"", title:"" }, render:[], workspace:[] }
execute if score @s pcd.use matches 1.. if score @s pcd.menu matches 2 if score @s pcd.menu_point matches 4 run tellraw @s {"text":"Workspace reset!","color":"red","bold":true}



execute if score @s pcd.use matches 1.. if score @s pcd.menu matches 3 if score @s pcd.menu_point matches 1 run function pcd:user/tellraw_save with storage pcd:workspace data
execute if score @s pcd.use matches 1.. if score @s pcd.menu matches 3 if score @s pcd.menu_point matches 2 run tellraw @s {"text":"[Click to load]","color":"white","bold":true,"clickEvent":{"action":"suggest_command","value":"/function pcd:user/load {name:\"\"}"}}
execute if score @s pcd.use matches 1.. if score @s pcd.menu matches 3 if score @s pcd.menu_point matches 3 run tellraw @s {"text":"[Click to delete]","color":"white","bold":true,"clickEvent":{"action":"suggest_command","value":"/data remove storage pcd:database data[{name:\"\"}]"}}

execute if score @s pcd.use matches 1.. run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1

scoreboard players reset @s pcd.sneak
scoreboard players reset @s pcd.use