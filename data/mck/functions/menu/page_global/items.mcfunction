item replace entity @s inventory.9 with gold_nugget[minecraft:item_name='{"translate":"menu.profile.back","color":"gray","bold":true,"italic":false}',minecraft:custom_model_data=112,menu:1b,killme:1b] 1
item replace entity @s inventory.18 with gold_nugget[minecraft:item_name='{"translate":"menu.profile.scroll_left","color":"gray","bold":true,"italic":false}',minecraft:custom_model_data=113,menu:1b,killme:1b] 1
item replace entity @s inventory.24 with gold_nugget[minecraft:item_name='{"translate":"menu.profile.scroll_right","color":"gray","bold":true,"italic":false}',minecraft:custom_model_data=114,menu:1b,killme:1b] 1

item replace entity @s inventory.26 with gold_nugget[minecraft:item_name='{"translate":"menu.global.stats","color":"#A3FFD4","bold":true,"italic":false}',minecraft:custom_model_data=147,menu:1b,killme:1b] 1
scoreboard players operation time mck_time = playtime mck_community
scoreboard players set skip_digits mck_time 1
function mck:time/calc
item modify entity @s inventory.26 mck:global_stats

item replace entity @s inventory.10 with player_head[minecraft:item_name='{"translate":"menu.global.no_player","color":"gray","bold":true,"italic":true}',SkullOwner:{Id:[I;-263118006,-1942141483,-1904681102,-1647256948],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjcwNWZkOTRhMGM0MzE5MjdmYjRlNjM5YjBmY2ZiNDk3MTdlNDEyMjg1YTAyYjQzOWUwMTEyZGEyMmIyZTJlYyJ9fX0="}]}},killme:1b] 1
item replace entity @s inventory.11 with player_head[minecraft:item_name='{"translate":"menu.global.no_player","color":"gray","bold":true,"italic":true}',SkullOwner:{Id:[I;-263118006,-1942141483,-1904681102,-1647256948],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjcwNWZkOTRhMGM0MzE5MjdmYjRlNjM5YjBmY2ZiNDk3MTdlNDEyMjg1YTAyYjQzOWUwMTEyZGEyMmIyZTJlYyJ9fX0="}]}},killme:1b] 1
item replace entity @s inventory.12 with player_head[minecraft:item_name='{"translate":"menu.global.no_player","color":"gray","bold":true,"italic":true}',SkullOwner:{Id:[I;-263118006,-1942141483,-1904681102,-1647256948],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjcwNWZkOTRhMGM0MzE5MjdmYjRlNjM5YjBmY2ZiNDk3MTdlNDEyMjg1YTAyYjQzOWUwMTEyZGEyMmIyZTJlYyJ9fX0="}]}},killme:1b] 1
item replace entity @s inventory.13 with player_head[minecraft:item_name='{"translate":"menu.global.no_player","color":"gray","bold":true,"italic":true}',SkullOwner:{Id:[I;-263118006,-1942141483,-1904681102,-1647256948],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjcwNWZkOTRhMGM0MzE5MjdmYjRlNjM5YjBmY2ZiNDk3MTdlNDEyMjg1YTAyYjQzOWUwMTEyZGEyMmIyZTJlYyJ9fX0="}]}},killme:1b] 1
item replace entity @s inventory.14 with player_head[minecraft:item_name='{"translate":"menu.global.no_player","color":"gray","bold":true,"italic":true}',SkullOwner:{Id:[I;-263118006,-1942141483,-1904681102,-1647256948],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjcwNWZkOTRhMGM0MzE5MjdmYjRlNjM5YjBmY2ZiNDk3MTdlNDEyMjg1YTAyYjQzOWUwMTEyZGEyMmIyZTJlYyJ9fX0="}]}},killme:1b] 1
item replace entity @s inventory.19 with player_head[minecraft:item_name='{"translate":"menu.global.no_player","color":"gray","bold":true,"italic":true}',SkullOwner:{Id:[I;-263118006,-1942141483,-1904681102,-1647256948],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjcwNWZkOTRhMGM0MzE5MjdmYjRlNjM5YjBmY2ZiNDk3MTdlNDEyMjg1YTAyYjQzOWUwMTEyZGEyMmIyZTJlYyJ9fX0="}]}},killme:1b] 1
item replace entity @s inventory.20 with player_head[minecraft:item_name='{"translate":"menu.global.no_player","color":"gray","bold":true,"italic":true}',SkullOwner:{Id:[I;-263118006,-1942141483,-1904681102,-1647256948],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjcwNWZkOTRhMGM0MzE5MjdmYjRlNjM5YjBmY2ZiNDk3MTdlNDEyMjg1YTAyYjQzOWUwMTEyZGEyMmIyZTJlYyJ9fX0="}]}},killme:1b] 1
item replace entity @s inventory.21 with player_head[minecraft:item_name='{"translate":"menu.global.no_player","color":"gray","bold":true,"italic":true}',SkullOwner:{Id:[I;-263118006,-1942141483,-1904681102,-1647256948],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjcwNWZkOTRhMGM0MzE5MjdmYjRlNjM5YjBmY2ZiNDk3MTdlNDEyMjg1YTAyYjQzOWUwMTEyZGEyMmIyZTJlYyJ9fX0="}]}},killme:1b] 1
item replace entity @s inventory.22 with player_head[minecraft:item_name='{"translate":"menu.global.no_player","color":"gray","bold":true,"italic":true}',SkullOwner:{Id:[I;-263118006,-1942141483,-1904681102,-1647256948],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjcwNWZkOTRhMGM0MzE5MjdmYjRlNjM5YjBmY2ZiNDk3MTdlNDEyMjg1YTAyYjQzOWUwMTEyZGEyMmIyZTJlYyJ9fX0="}]}},killme:1b] 1
item replace entity @s inventory.23 with player_head[minecraft:item_name='{"translate":"menu.global.no_player","color":"gray","bold":true,"italic":true}',SkullOwner:{Id:[I;-263118006,-1942141483,-1904681102,-1647256948],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjcwNWZkOTRhMGM0MzE5MjdmYjRlNjM5YjBmY2ZiNDk3MTdlNDEyMjg1YTAyYjQzOWUwMTEyZGEyMmIyZTJlYyJ9fX0="}]}},killme:1b] 1

scoreboard players set temp mck_temp 0
data remove storage temp players
data remove storage temp player_ids
function mck:menu/page_global/collect_players

execute if data storage temp players[0] run item modify entity @s inventory.10 mck:copy_global_player
data remove storage temp players[0]
execute if data storage temp players[0] run item modify entity @s inventory.19 mck:copy_global_player
data remove storage temp players[0]
execute if data storage temp players[0] run item modify entity @s inventory.11 mck:copy_global_player
data remove storage temp players[0]
execute if data storage temp players[0] run item modify entity @s inventory.20 mck:copy_global_player
data remove storage temp players[0]
execute if data storage temp players[0] run item modify entity @s inventory.12 mck:copy_global_player
data remove storage temp players[0]
execute if data storage temp players[0] run item modify entity @s inventory.21 mck:copy_global_player
data remove storage temp players[0]
execute if data storage temp players[0] run item modify entity @s inventory.13 mck:copy_global_player
data remove storage temp players[0]
execute if data storage temp players[0] run item modify entity @s inventory.22 mck:copy_global_player
data remove storage temp players[0]
execute if data storage temp players[0] run item modify entity @s inventory.14 mck:copy_global_player
data remove storage temp players[0]
execute if data storage temp players[0] run item modify entity @s inventory.23 mck:copy_global_player

item replace block 0 0 0 container.0 from entity @s enderchest.0
data modify block 0 0 0 Items[0].tag.global_player_ids set from storage temp player_ids
item replace entity @s enderchest.0 from block 0 0 0 container.0

item replace entity @s weapon.offhand with writable_book[minecraft:item_name='{"translate":"menu.global.search_player","color":"#FFD9A1","bold":true,"italic":false}',minecraft:lore=['{"text":" "}','[{"translate":"menu.global.lore1_1","color":"#C9B6B3","bold":false,"italic":false},{"translate":"menu.global.lore1_2","color":"#FFDDD6","bold":false,"italic":false}]','{"text":" "}','{"translate":"menu.global.lore2","color":"#C9B6B3","bold":false,"italic":false}','[{"translate":"menu.global.lore3_1","color":"#C9B6B3","bold":false,"italic":false},{"translate":"menu.global.lore3_2","color":"#FFDDD6","bold":false,"italic":false}]'],pages:[""],killme:1b,search:1b] 1

item replace entity @s inventory.4 with gold_nugget[minecraft:item_name='{"text":" "}',minecraft:custom_model_data=10008,killme:1b] 1