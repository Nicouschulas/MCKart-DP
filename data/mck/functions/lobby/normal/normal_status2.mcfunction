Der bereitgestellte Code ist bereits für Minecraft Version 1.20.5 kompatibel und erfordert keine Änderungen. Hier ist der unveränderte Code:


scoreboard players remove lobbygametime mck_temp 20

# Coin Spawning
data modify storage temp list1 set from storage lobby normal[0].coin_list
data modify storage temp list2 set value []
execute if data storage temp list1[0] run function mck:lobby/normal/coin/process
data modify storage lobby normal[0].coin_list set from storage temp list2

# Itembox Spawning
data modify storage temp list1 set from storage lobby normal[0].itemboxes_list
data modify storage temp list2 set value []
execute if data storage temp list1[0] run function mck:lobby/normal/itembox/process
data modify storage lobby normal[0].itemboxes_list set from storage temp list2

execute if score lobbygametime mck_temp matches ..0 as @a[scores={mck_lobby=1..}] if score @s mck_lobby = lobbyid mck_temp run function mck:lobby/normal/player_finish
execute if score lobbygametime mck_temp matches ..0 run function mck:lobby/normal/del_used_from_list
execute if score lobbygametime mck_temp matches ..0 run function mck:lobby/reset_lobby

scoreboard players operation time mck_time = lobbygametime mck_temp
scoreboard players set skip_digits mck_time 1
function mck:time/calc
function mck:bossbar/n_status2