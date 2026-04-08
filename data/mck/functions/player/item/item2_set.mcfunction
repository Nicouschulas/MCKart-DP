execute store result score id mck_temp run data get entity @s EnderItems[3].tag.item2[0]

execute if score id mck_temp matches 1..2 run item replace block 0 0 0 container.0 with carrot_on_a_stick{display:{Name:'{"translate":"race.item.item1","color":"#FFDBDB","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:1001,killme:1b} 1
execute if score id mck_temp matches 3..4 run item replace block 0 0 0 container.0 with carrot_on_a_stick{display:{Name:'{"translate":"race.item.item3","color":"#FFDBDB","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:1003,killme:1b} 1
execute if score id mck_temp matches 5 run item replace block 0 0 0 container.0 with carrot_on_a_stick{display:{Name:'{"translate":"race.item.item5","color":"#FFDBDB","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:1005,killme:1b} 1
execute if score id mck_temp matches 6 run item replace block 0 0 0 container.0 with carrot_on_a_stick{display:{Name:'{"translate":"race.item.item6","color":"#FFDBDB","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:1006,killme:1b} 1
execute if score id mck_temp matches 7..8 run item replace block 0 0 0 container.0 with carrot_on_a_stick{display:{Name:'{"translate":"race.item.item7","color":"#FFDBDB","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:1007,killme:1b} 1
execute if score id mck_temp matches 9 run item replace block 0 0 0 container.0 with carrot_on_a_stick{display:{Name:'{"translate":"race.item.item9","color":"#FFDBDB","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:1009,killme:1b} 1
execute if score id mck_temp matches 10 run item replace block 0 0 0 container.0 with carrot_on_a_stick{display:{Name:'{"translate":"race.item.item10","color":"#FFDBDB","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:1010,killme:1b} 1
execute if score id mck_temp matches 11..12 run item replace block 0 0 0 container.0 with carrot_on_a_stick{display:{Name:'{"translate":"race.item.item11","color":"#FFDBDB","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:1011,killme:1b} 1
execute if score id mck_temp matches 13 run item replace block 0 0 0 container.0 with carrot_on_a_stick{display:{Name:'{"translate":"race.item.item13","color":"#FFDBDB","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:1013,killme:1b} 1
execute if score id mck_temp matches 14 run item replace block 0 0 0 container.0 with carrot_on_a_stick{display:{Name:'{"translate":"race.item.item14","color":"#FFDBDB","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:1014,killme:1b} 1
execute if score id mck_temp matches 15 run item replace block 0 0 0 container.0 with carrot_on_a_stick{display:{Name:'{"translate":"race.item.item15","color":"#FFDBDB","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:1015,killme:1b} 1
execute if score id mck_temp matches 16 run item replace block 0 0 0 container.0 with carrot_on_a_stick{display:{Name:'{"translate":"race.item.item16","color":"#FFDBDB","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:1016,killme:1b} 1
execute if score id mck_temp matches 17 run item replace block 0 0 0 container.0 with carrot_on_a_stick{display:{Name:'{"translate":"race.item.item17","color":"#FFDBDB","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:1017,killme:1b} 1
execute if score id mck_temp matches 18 run item replace block 0 0 0 container.0 with carrot_on_a_stick{display:{Name:'{"translate":"race.item.item18","color":"#FFDBDB","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:1018,killme:1b} 1

scoreboard players operation count mck_temp = @s mck_item2_count

execute if score @s mck_item2 matches 14 run scoreboard players set count mck_temp 1
execute if score @s mck_item2 matches 16 run scoreboard players set count mck_temp 1

execute store result block 0 0 0 Items[0].Count byte 1 run scoreboard players get count mck_temp

item replace entity @s weapon.offhand from block 0 0 0 container.0