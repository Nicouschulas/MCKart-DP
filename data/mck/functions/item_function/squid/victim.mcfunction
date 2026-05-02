execute if score @s mck_squid matches 160 run playsound minecraft:entity.guardian.attack master @s[scores={mck_setting1=1}] ~ ~ ~ 100 1
execute if score @s mck_squid matches 125 run playsound minecraft:entity.llama.spit master @s[scores={mck_setting1=1}] ~ ~ ~ 1 1
execute if score @s mck_squid matches 125 run title @s times 2 40 80
execute if score @s mck_squid matches 125 run title @s subtitle ""
execute if score @s mck_squid matches 125 run title @s title "\uE001"

execute if score @s mck_squid matches 81..125 run particle minecraft:squid_ink ~ ~0.8 ~ 0.3 0.5 0.3 0 8
execute if score @s mck_squid matches 41..80 run particle minecraft:squid_ink ~ ~0.8 ~ 0.3 0.5 0.3 0 4
execute if score @s mck_squid matches 0..40 run particle minecraft:squid_ink ~ ~0.8 ~ 0.3 0.5 0.3 0 1

execute if entity @s[tag=bot] if score @s mck_squid matches ..125 if score @s mck_speed matches 106.. run scoreboard players set @s mck_speed 105

scoreboard players remove @s mck_squid 1
execute if score @s mck_squid matches ..0 run scoreboard players reset @s mck_squid