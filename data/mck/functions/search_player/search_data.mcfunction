$execute store result score id mck_temp run data get storage databases players[{data:{head:{tag:{SkullOwner:{Name:$(name)}}}}}].data.id

execute if score id mck_temp matches 1.. run function mck:search_player/load_page

$execute if score id mck_temp matches 0 run tellraw @s [{"text":"[","color":"gray","bold":true},{"translate":"system","color":"gold","bold":false},{"text":"] "},{"translate":"menu.profile.search.error","color":"#D6D6D6","bold":false},{"text":"$(name)","color":"#D68787"}]
execute if score id mck_temp matches 0 run playsound minecraft:entity.villager.no master @s[scores={mck_setting1=1}] ~ ~ ~ 1 0.8 1
execute if score id mck_temp matches 0 run function mck:menu/draw