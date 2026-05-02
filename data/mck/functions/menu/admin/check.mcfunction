scoreboard players set clear mck_temp 0

execute unless data storage menu inv[{"Slot":18b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{"Slot":18b}] run tellraw @s {"translate":"menu.page.admin_settings.setting1","color":"#F0F0F0","bold":true,"italic":false,"clickEvent":{"action":"suggest_command","value":"/scoreboard players set coin_multiplier_length mck_admin_settings 18000"}}
execute unless data storage menu inv[{"Slot":19b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{"Slot":19b}] run tellraw @s {"translate":"menu.page.admin_settings.setting2","color":"#F0F0F0","bold":true,"italic":false,"clickEvent":{"action":"suggest_command","value":"/scoreboard players set ranking_list_update mck_admin_settings 18000"}}
execute unless data storage menu inv[{"Slot":20b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{"Slot":20b}] run tellraw @s {"translate":"menu.page.admin_settings.setting3","color":"#F0F0F0","bold":true,"italic":false,"clickEvent":{"action":"suggest_command","value":"/scoreboard players set time_per_rank mck_admin_settings 60"}}
execute unless data storage menu inv[{"Slot":21b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{"Slot":21b}] run tellraw @s {"translate":"menu.page.admin_settings.setting4","color":"#F0F0F0","bold":true,"italic":false,"clickEvent":{"action":"suggest_command","value":"/scoreboard players set botcount mck_admin_settings 5"}}
execute unless data storage menu inv[{"Slot":22b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{"Slot":22b}] run tellraw @s {"translate":"menu.page.admin_settings.setting5","color":"#F0F0F0","bold":true,"italic":false,"clickEvent":{"action":"suggest_command","value":"/scoreboard players set maxplayersnormal mck_admin_settings 9"}}
execute unless data storage menu inv[{"Slot":23b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{"Slot":23b}] run tellraw @s {"translate":"menu.page.admin_settings.setting6","color":"#F0F0F0","bold":true,"italic":false,"clickEvent":{"action":"suggest_command","value":"/scoreboard players set coinrespawn mck_admin_settings 6"}}
execute unless data storage menu inv[{"Slot":24b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{"Slot":24b}] run tellraw @s {"translate":"menu.page.admin_settings.setting7","color":"#F0F0F0","bold":true,"italic":false,"clickEvent":{"action":"suggest_command","value":"/scoreboard players set maxplayersranked mck_admin_settings 3"}}
execute unless data storage menu inv[{"Slot":25b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{"Slot":25b}] run tellraw @s {"translate":"menu.page.admin_settings.setting8","color":"#F0F0F0","bold":true,"italic":false,"clickEvent":{"action":"suggest_command","value":"/scoreboard players set itemrespawn mck_admin_settings 2"}}
execute unless data storage menu inv[{"Slot":26b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{"Slot":26b}] run tellraw @s {"translate":"menu.page.admin_settings.setting9","color":"#F0F0F0","bold":true,"italic":false,"clickEvent":{"action":"suggest_command","value":"/scoreboard players set automenudelay mck_admin_settings 1"}}
execute unless data storage menu inv[{"Slot":27b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{"Slot":27b}] run tellraw @s {"translate":"menu.page.admin_settings.setting10","color":"#F0F0F0","bold":true,"italic":false,"clickEvent":{"action":"suggest_command","value":"/scoreboard players set drive_tick_rate mck_admin_settings 1"}}
execute unless data storage menu inv[{"Slot":28b}] run scoreboard players set clear mck_temp 1
execute unless data storage menu inv[{"Slot":28b}] run tellraw @s {"translate":"menu.page.admin_settings.setting11","color":"#F0F0F0","bold":true,"italic":false,"clickEvent":{"action":"suggest_command","value":"/scoreboard players set allow_free_drive mck_admin_settings 1"}}

execute if score clear mck_temp matches 1.. run playsound ui.button.click master @s[scores={mck_setting1=1}] ~ ~ ~ 0.3 0.9
execute if score clear mck_temp matches 1.. run function mck:menu/draw

execute unless data storage menu inv[{"Slot":13b}] unless score @s mck_menudelay matches 1.. run function mck:menu/draw