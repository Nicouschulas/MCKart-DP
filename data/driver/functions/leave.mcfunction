#function mck:player/show_menu
scoreboard players set @s mck_status 0
execute on vehicle on passengers if entity @s[type=!player] run kill @s
execute on vehicle run kill @s
stopsound @s player