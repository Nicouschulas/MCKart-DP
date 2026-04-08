scoreboard players operation @s mck_player_menu = id mck_temp
scoreboard players operation @s mck_previous_page = @s mck_page
scoreboard players set @s mck_page -8
scoreboard players set @s mck_player_track_menu 0
function mck:menu/draw

tellraw @s [{"text":"[","color":"gray","bold":true},{"translate":"system","color":"gold","bold":false},{"text":"] "},{"translate":"menu.profile.search.success1","color":"#CCFFC2","bold":false}]
tellraw @s [{"text":"[","color":"gray","bold":true},{"translate":"system","color":"gold","bold":false},{"text":"] "},{"translate":"menu.profile.search.success2","color":"#CCFFC2","bold":false}]
playsound minecraft:entity.player.levelup master @s[scores={mck_setting1=1}] ~ ~ ~ 1 1.4 1