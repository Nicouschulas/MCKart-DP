$data modify storage pcd:workspace data.fadeouttitle.fadein set value $(fadein)
$data modify storage pcd:workspace data.fadeouttitle.stay set value $(stay)
$data modify storage pcd:workspace data.fadeouttitle.fadeout set value $(fadeout)

execute store result score #temp pcd.temp run data get storage pcd:workspace data.settings.length
$scoreboard players remove #temp pcd.temp $(fadein)
execute if score #temp pcd.temp matches ..-1 run scoreboard players set #temp pcd.temp 0

execute store result storage pcd:workspace data.fadeouttitle.frame int 1 run scoreboard players get #temp pcd.temp