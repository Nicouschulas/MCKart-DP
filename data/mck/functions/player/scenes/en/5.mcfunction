execute if score @s mck_scene_anim matches 1200 run stopsound @s player
execute if score @s mck_scene_anim matches 1200 run scoreboard players set @s mck_sound_engine 430

execute if score @s mck_scene_anim matches 1200 run playsound custom:en.start.manager4 master @s ~ ~ ~ 1 1
execute if score @s mck_scene_anim matches 1200 run tag @s add phone_bar
execute if score @s mck_scene_anim matches 1200 run bossbar set phone players @a[tag=phone_bar]

execute if score @s mck_scene_anim matches 740.. run scoreboard players remove @s mck_speed 4
execute if score @s mck_scene_anim matches 740.. if score @s mck_speed matches ..-3 run scoreboard players set @s mck_speed -2
execute if score @s mck_scene_anim matches 740.. run scoreboard players set @s mck_brake 0
execute if score @s mck_scene_anim matches 740.. on vehicle run scoreboard players set @s mck_drift 0
execute if score @s mck_scene_anim matches 820 run tag @s remove phone_bar


execute if score @s mck_scene_anim matches 1135..1200 run title @s actionbar {"translate":"subtitles.manager24","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 1050..1135 run title @s actionbar {"translate":"subtitles.manager25","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 980..1050 run title @s actionbar {"translate":"subtitles.manager26","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 920..980 run title @s actionbar {"translate":"subtitles.manager27","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 830..920 run title @s actionbar {"translate":"subtitles.manager28","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 820..830 run title @s actionbar {"translate":"subtitles.manager29","color":"#DEDEDE","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 820 run scoreboard players set @s mck_scene_anim 755


# ITEM COLLECTION ANIM
execute if score @s mck_scene_anim matches 739 if entity @s[x=-2000219,y=101,z=173,dx=5,dy=3,dz=3] run scoreboard players set @s mck_scene_anim 738
execute if score @s mck_scene_anim matches 738 run playsound custom:itemrolling master @s ~ ~ ~ 1 1
execute if score @s mck_scene_anim matches 738 run playsound minecraft:block.stone.break master @s ~ ~ ~ 3 2
execute if score @s mck_scene_anim matches 738 run particle minecraft:scrape -2000216.48 102.00 174.47 0.4 0.4 0.4 2 20
execute if score @s mck_scene_anim matches 738 run item replace block 0 0 0 container.0 from entity @s enderchest.3
execute if score @s mck_scene_anim matches 738 run data modify block 0 0 0 Items[0].tag.item1 set value [1,3,5,6,7]
execute if score @s mck_scene_anim matches 738 run item replace entity @s enderchest.3 from block 0 0 0 container.0

execute if score @s mck_scene_anim matches 666..738 run scoreboard players operation temp mck_temp = @s mck_scene_anim
execute if score @s mck_scene_anim matches 666..738 run scoreboard players operation temp mck_temp %= #2 wasd.constant
execute if score @s mck_scene_anim matches 666..738 if score temp mck_temp matches 0 run function mck:player/item/item1_rolling
execute if score @s mck_scene_anim matches 666..738 if score temp mck_temp matches 0 run item replace block 0 0 0 container.0 from entity @s enderchest.3
execute if score @s mck_scene_anim matches 666..738 if score temp mck_temp matches 0 run data modify block 0 0 0 Items[0].tag.item1 append from block 0 0 0 Items[0].tag.item1[0]
execute if score @s mck_scene_anim matches 666..738 if score temp mck_temp matches 0 run data remove block 0 0 0 Items[0].tag.item1[0]
execute if score @s mck_scene_anim matches 668 if score temp mck_temp matches 0 run data modify block 0 0 0 Items[0].tag.item1 set value [1]
execute if score @s mck_scene_anim matches 666..738 if score temp mck_temp matches 0 run item replace entity @s enderchest.3 from block 0 0 0 container.0
# ITEM COLLECTION ANIM


# ITEM USING
execute if score @s mck_scene_anim matches 665 if score @s mck_use matches 1.. run particle minecraft:cloud ~ ~1 ~ 0.7 0.7 0.7 0.08 10
execute if score @s mck_scene_anim matches 665 if score @s mck_use matches 1.. run playsound custom:boost master @s ~ ~ ~ 10 1.1
execute if score @s mck_scene_anim matches 665 if score @s mck_use matches 1.. run scoreboard players set @s mck_boost 35
execute if score @s mck_scene_anim matches 665 if score @s mck_use matches 1.. run scoreboard players set @s mck_scene_anim 664

execute if score @s mck_scene_anim matches 665 if entity @s[x=-2000222,y=101,z=270,dx=11,dy=3,dz=3] run scoreboard players set @s mck_scene_anim 664

execute if score @s mck_scene_anim matches 664 run clear @s

execute if score @s mck_scene_anim matches 665 run title @s subtitle {"translate":"subtitles.use","color":"white","bold":false,"italic":false}
execute if score @s mck_scene_anim matches 665 run title @s times 0 10 3
execute if score @s mck_scene_anim matches 665 run title @s title ""
# ITEM USING

# FINISH LINE
execute if score @s mck_scene_anim matches 664 if entity @s[x=-2000222,y=101,z=293,dx=11,dy=3,dz=3] run function driver:leave
execute if score @s mck_scene_anim matches 664 if entity @s[x=-2000222,y=101,z=293,dx=11,dy=3,dz=3] run scoreboard players set @s mck_scene 11
execute if score @s mck_scene_anim matches 664 if entity @s[x=-2000222,y=101,z=293,dx=11,dy=3,dz=3] run function mck:player/scenes/start
execute if score @s mck_scene_anim matches 664 if entity @s[x=-2000222,y=101,z=293,dx=11,dy=3,dz=3] run scoreboard players set @s mck_scene_anim 663

execute if score @s mck_scene matches 10 if score @s mck_scene_anim matches 740..1200 run scoreboard players remove @s mck_scene_anim 1
execute if score @s mck_scene matches 10 if score @s mck_scene_anim matches 666..738 run scoreboard players remove @s mck_scene_anim 1