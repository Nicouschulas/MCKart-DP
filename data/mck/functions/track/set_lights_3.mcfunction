summon marker 0 4 0 {Tags:["placer"]}

data modify entity @e[type=marker,tag=placer,limit=1] Pos set from storage temp trafficlights[2]

execute at @e[type=marker,tag=placer,limit=1] run data merge block ~ ~ ~ {SkullOwner:{Id:[I;1245739967,625363874,-1259894650,-1900249081],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTYxNDNhNTQwYzFiYjVlMDEwMmQyYzFhMWFhNmQ5ODNhZjQ3OTY3NTliNDI4NGQyY2E0ZGRiMDFhYTViMWY5OSJ9fX0="}]}}}

kill @e[type=marker,tag=placer,limit=1]