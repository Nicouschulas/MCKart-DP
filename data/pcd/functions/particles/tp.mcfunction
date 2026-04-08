$execute if score #temp pcd.temp matches 1 positioned $(x) $(y) $(z) run particle wax_off ~ ~ ~ 0 0 0 0 1 force @a[gamemode=!spectator,scores={pcd.enable=1}]
$execute if score #temp pcd.temp matches 1 positioned $(x) $(y) $(z) rotated $(rx) $(ry) run particle wax_on ^ ^ ^0.2 0 0 0 0 1 force @a[gamemode=!spectator,scores={pcd.enable=1}]
$execute if score #temp pcd.temp matches 1 positioned $(x) $(y) $(z) rotated $(rx) $(ry) run particle wax_on ^ ^ ^0.4 0 0 0 0 1 force @a[gamemode=!spectator,scores={pcd.enable=1}]

$execute if score #temp pcd.temp matches 2 positioned $(x) $(y) $(z) run particle end_rod ~ ~ ~ 0 0 0 0 1 force @a[gamemode=!spectator,scores={pcd.enable=1}]