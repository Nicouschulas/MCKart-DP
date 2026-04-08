item replace entity @s armor.head with carved_pumpkin{display:{Name:'{"text":" "}'},HideFlags:127,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
playsound minecraft:block.note_block.chime master @s[scores={mck_setting1=1}] ~ ~ ~ 1 1.3
execute if score did_connect2 mck_temp matches 0 run item replace entity @s armor.head with air


execute if score did_connect2 mck_temp matches 0 run scoreboard players add @s mck_stun 25
execute if score did_connect2 mck_temp matches 0 run item replace entity @s armor.head with air
execute if score did_connect2 mck_temp matches 0 run function mck:player/drive/tumble
execute if score did_connect2 mck_temp matches 0 run scoreboard players reset @s mck_red_id