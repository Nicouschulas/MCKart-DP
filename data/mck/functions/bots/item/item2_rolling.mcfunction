item replace block 0 0 0 container.0 with carrot_on_a_stick[minecraft:item_name='{"translate":"race.item.rolling","color":"dark_gray","italic":false}',minecraft:custom_model_data=1001,minecraft:unbreakable={},killme:1b] 1

execute store result score custommodeldata mck_temp run data get entity @s HandItems[0].components[minecraft:item2][0] 1
scoreboard players add custommodeldata mck_temp 1000
execute store result storage temp custommodeldata int 1 run scoreboard players get custommodeldata mck_temp

item modify block 0 0 0 container.0 mck:copy_item

execute on passengers if entity @s[tag=puppet] run item replace entity @s weapon.offhand from block 0 0 0 container.0