execute if score selected mck_temp matches 1 store result score id mck_temp run data get storage temp id_list[0].id
execute if score selected mck_temp matches 2 store result score id mck_temp run data get storage temp id_list[1].id
execute if score selected mck_temp matches 3 store result score id mck_temp run data get storage temp id_list[2].id
execute if score selected mck_temp matches 4 store result score id mck_temp run data get storage temp id_list[3].id
execute if score selected mck_temp matches 5 store result score id mck_temp run data get storage temp id_list[4].id
execute if score selected mck_temp matches 6 store result score id mck_temp run data get storage temp id_list[5].id
execute if score selected mck_temp matches 7 store result score id mck_temp run data get storage temp id_list[6].id
execute if score selected mck_temp matches 8 store result score id mck_temp run data get storage temp id_list[7].id
execute if score selected mck_temp matches 9 store result score id mck_temp run data get storage temp id_list[8].id
execute if score selected mck_temp matches 10 store result score id mck_temp run data get storage temp id_list[9].id
execute if score selected mck_temp matches 11 store result score id mck_temp run data get storage temp id_list[10].id
execute if score selected mck_temp matches 12 store result score id mck_temp run data get storage temp id_list[11].id

scoreboard players operation @s mck_spectate = id mck_temp

execute as @a[scores={mck_status=1,mck_lobby_status=2}] if score @s mck_id = id mck_temp at @s rotated as @s positioned ~ ~1.3 ~ positioned ^ ^ ^1 run function mck:player/spectate/add

item replace block 0 0 0 container.0 from entity @s enderchest.2
data modify block 0 0 0 Items[0].components.data.music set from storage temp temp
item replace entity @s enderchest.2 from block 0 0 0 container.0
function mck:player/audio_music/intro with entity @s EnderItems[2].components.data.music


scoreboard players set clear mck_temp 1

gamemode spectator @s
scoreboard players set @s mck_status 2
scoreboard players set @s mck_sound_engine 0
function mck:player/hide_menu
function mck:player/team/spectate

data modify storage temp pos set from entity @s Pos
execute store result score @s mck_last_x run data get storage temp pos[0]
execute store result score @s mck_last_y run data get storage temp pos[1]
execute store result score @s mck_last_z run data get storage temp pos[2]


tag @s add temp
execute as @e[type=item_display,tag=mck_spectate_entity] if score @s mck_spectate = id mck_temp run spectate @s @a[tag=temp,limit=1]
tag @s remove temp


item replace entity @s inventory.4 with gold_nugget[display={Name:'{"text":" "}'},CustomModelData:10013,killme:1b] 1



item replace entity @s armor.chest with iron_chestplate[display={Name:'{"text":" "}'},Unbreakable:1b,killme:1b,CustomModelData:1] 1

item replace block 0 0 0 container.0 with iron_leggings[display={Name:'{"text":" "}'},Unbreakable:1b,killme:1b] 1

execute store result score temp mck_temp run data get entity @s EnderItems[4].components.stats.rank
scoreboard players add temp mck_temp 1
execute store result block 0 0 0 Items[0].components.CustomModelData int 1 run scoreboard players get temp mck_temp

item replace entity @s armor.legs from block 0 0 0 container.0