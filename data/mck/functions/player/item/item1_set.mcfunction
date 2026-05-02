execute store result score id mck_temp run data get entity @s EnderItems[3].tag.item1[0]

execute if score id mck_temp matches 1..2 run item replace block 0 0 0 container.0 with carrot_on_a_stick[minecraft:display={Name:'{"translate":"race.item.item1","color":"#FFDBDB","bold":true,"italic":false}'},minecraft:Unbreakable={},minecraft:CustomModelData=1001,minecraft:killme=1b] 1
execute if score id mck_temp matches 3..4 run item replace block 0 0 0 container.0 with carrot_on_a_stick[minecraft:display={Name:'{"translate":"race.item.item3","color":"#FFDBDB","bold":true,"italic":false}'},minecraft:Unbreakable={},minecraft:CustomModelData=1003,minecraft:killme=1b] 1
execute if score id mck_temp matches 5 run item replace block 0 0 0 container.0 with carrot_on_a_stick[minecraft:display={Name:'{"translate":"race.item.item5","color":"#FFDBDB","bold":true,"italic":false}'},minecraft:Unbreakable={},minecraft:CustomModelData=1005,minecraft:killme=1b] 1
execute if score id mck_temp matches 6 run item replace block 0 0 0 container.0 with carrot_on_a_stick[minecraft:display={Name:'{"translate":"race.item.item6","color":"#FFDBDB","bold":true,"italic":false}'},minecraft:Unbreakable={},minecraft:CustomModelData=1006,minecraft:killme=1b] 1
execute if score id mck_temp matches 7..8 run item replace block 0 0 0 container.0 with carrot_on_a_stick[minecraft:display={Name:'{"translate":"race.item.item7","color":"#FFDBDB","bold":true,"italic":false}'},minecraft:Unbreakable={},minecraft:CustomModelData=1007,minecraft:killme=1b] 1
execute if score id mck_temp matches 9 run item replace block 0 0 0 container.0 with carrot_on_a_stick[minecraft:display={Name:'{"translate":"race.item.item9","color":"#FFDBDB","bold":true,"italic":false}'},minecraft:Unbreakable={},minecraft:CustomModelData=1009,minecraft:killme=1b] 1
execute if score id mck_temp matches 10 run item replace block 0 0 0 container.0 with carrot_on_a_stick[minecraft:display={Name:'{"translate":"race.item.item10","color":"#FFDBDB","bold":true,"italic":false}'},minecraft:Unbreakable={},minecraft:CustomModelData=1010,minecraft:killme=1b] 1
execute if score id mck_temp matches 11..12 run item replace block 0 0 0 container.0 with carrot_on_a_stick[minecraft:display={Name:'{"translate":"race.item.item11","color":"#FFDBDB","bold":true,"italic":false}'},minecraft:Unbreakable={},minecraft:CustomModelData=1011,minecraft:killme=1b] 1
execute if score id mck_temp matches 13 run item replace block 0 0 0 container.0 with carrot_on_a_stick[minecraft:display={Name:'{"translate":"race.item.item13","color":"#FFDBDB","bold":true,"italic":false}'},minecraft:Unbreakable={},minecraft:CustomModelData=1013,minecraft:killme=1b] 1
execute if score id mck_temp matches 14 run item replace block 0 0 0 container.0 with carrot_on_a_stick[minecraft:display={Name:'{"translate":"race.item.item14","color":"#FFDBDB","bold":true,"italic":false}'},minecraft:Unbreakable={},minecraft:CustomModelData=1014,minecraft:killme=1b] 1
execute if score id mck_temp matches 15 run item replace block 0 0 0 container.0 with carrot_on_a_stick[minecraft:display={Name:'{"translate":"race.item.item15","color":"#FFDBDB","bold":true,"italic":false}'},minecraft:Unbreakable={},minecraft:CustomModelData=1015,minecraft:killme=1b] 1
execute if score id mck_temp matches 16 run item replace block 0 0 0 container.0 with carrot_on_a_stick[minecraft:display={Name:'{"translate":"race.item.item16","color":"#FFDBDB","bold":true,"italic":false}'},minecraft:Unbreakable={},minecraft:CustomModelData=1016,minecraft:killme=1b] 1
execute if score id mck_temp matches 17 run item replace block 0 0 0 container.0 with carrot_on_a_stick[minecraft:display={Name:'{"translate":"race.item.item17","color":"#FFDBDB","bold":true,"italic":false}'},minecraft:Unbreakable={},minecraft:CustomModelData=1017,minecraft:killme=1b] 1
execute if score id mck_temp matches 18 run item replace block 0 0 0 container.0 with carrot_on_a_stick[minecraft:display={Name:'{"translate":"race.item.item18","color":"#FFDBDB","bold":true,"italic":false}'},minecraft:Unbreakable={},minecraft:CustomModelData=1018,minecraft:killme=1b] 1

scoreboard players operation count mck_temp = @s mck_item1_count

execute if score @s mck_item1 matches 14 run scoreboard players set count mck_temp 1
execute if score @s mck_item1 matches 16 run scoreboard players set count mck_temp 1

execute store result block 0 0 0 Items[0].Count byte 1 run scoreboard players get count mck_temp

item replace entity @s hotbar.0 from block 0 0 0 container.0
item replace entity @s hotbar.1 from block 0 0 0 container.0
item replace entity @s hotbar.2 from block 0 0 0 container.0
item replace entity @s hotbar.3 from block 0 0 0 container.0
item replace entity @s hotbar.4 from block 0 0 0 container.0
item replace entity @s hotbar.5 from block 0 0 0 container.0
item replace entity @s hotbar.6 from block 0 0 0 container.0
item replace entity @s hotbar.7 from block 0 0 0 container.0
item replace entity @s hotbar.8 from block 0 0 0 container.0