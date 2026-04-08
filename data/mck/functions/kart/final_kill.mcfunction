item replace entity @s weapon.mainhand with air
execute on passengers if entity @s[type=minecraft:player] run ride @s dismount
execute on passengers run kill @s
kill @s
tp @s ~ ~-500 ~