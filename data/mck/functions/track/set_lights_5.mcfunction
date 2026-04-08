summon marker 0 4 0 {Tags:["placer"]}

data modify entity @e[type=marker,tag=placer,limit=1] Pos set from storage temp trafficlights[0]

execute at @e[type=marker,tag=placer,limit=1] run data merge block ~ ~ ~ {SkullOwner:{Id:[I;-323061288,-2080026892,-1651360266,-2002935287],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjkyMTI5NzdkZmRjZDdmZTg1ZWYzODdhZDk5YjEzODcyNWRlNWUxYzgwYjdjMzZiMTA3NzViNGZkMjdmOWI0OCJ9fX0="}]}}}

kill @e[type=marker,tag=placer,limit=1]