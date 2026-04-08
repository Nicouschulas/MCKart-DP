scoreboard players set pcd.first_start pcd.enable 1
forceload add 0 0 0 0

data remove storage pcd:database data

data modify storage pcd:workspace data set value { name:"Untitled", settings:{ length:0, fadeouttitle:0b }, fadeouttitle:{ frame:0, fadein:0, stay:0, fadeout:0, subtitle:"", title:"" }, render:[], workspace:[] }