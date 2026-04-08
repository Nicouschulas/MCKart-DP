summon marker 0 4 0 {Tags:["placer"]}

data modify entity @e[type=marker,tag=placer,limit=1] Pos set from storage temp trafficlights[4]

execute at @e[type=marker,tag=placer,limit=1] run data merge block ~ ~ ~ {SkullOwner:{Id:[I;-1608485978,-26981653,-1572230497,-944718676],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzMwN2YzNmE0OGI0ODZjMWMzZDlhNzZhYWVjMmNjNDQxM2U0N2YyMDQwY2Y4MTY1YjE2NjFkMGU3YTk4YTMwYSJ9fX0="}]}}}

kill @e[type=marker,tag=placer,limit=1]