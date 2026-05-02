{
  "nbt": "time[]",
  "storage": "time",
  "interpret": true,
  "color": "white",
  "bold": true,
  "separator": ""
}
data remove storage time time
scoreboard players set negativ mck_time 0
execute if score time mck_time matches ..-1 run scoreboard players set negativ mck_time 1
execute if score time mck_time matches ..-1 run scoreboard players operation time mck_time *= #-1 mck_time

scoreboard players operation time12_h mck_time = time mck_time
scoreboard players operation time12_min mck_time = time mck_time
scoreboard players operation time12_sec mck_time = time mck_time
scoreboard players operation time12_10sec mck_time = time mck_time
scoreboard players operation time12_100sec mck_time = time mck_time

scoreboard players operation time12_h mck_time /= #72000 mck_time
scoreboard players operation time12_min mck_time %= #72000 mck_time
scoreboard players operation time12_min mck_time /= #1200 mck_time
scoreboard players operation time12_sec mck_time %= #1200 mck_time
scoreboard players operation time12_sec mck_time /= #20 mck_time
scoreboard players operation time12_10sec mck_time /= #2 mck_time
scoreboard players operation time12_10sec mck_time %= #10 mck_time
scoreboard players operation time12_100sec mck_time %= #2 mck_time
execute if score time12_100sec mck_time matches 1 run scoreboard players set time12_100sec mck_time 5

execute if score negativ mck_time matches 1 run scoreboard players operation time mck_time *= #-1 mck_time
execute if score negativ mck_time matches 1 run data modify storage time time append value '{"text":"-"}'

execute if score time12_h mck_time matches 1.. run data modify storage time time append value '{"score":{"name":"time12_h","objective":"mck_time"}}'
execute if score time12_h mck_time matches 1.. run data modify storage time time append value '{"text":":"}'

execute if score time12_min mck_time matches ..9 run data modify storage time time append value '{"text":"0"}'
data modify storage time time append value '{"score":{"name":"time12_min","objective":"mck_time"}}'
data modify storage time time append value '{"text":":"}'
execute if score time12_sec mck_time matches ..9 run data modify storage time time append value '{"text":"0"}'
data modify storage time time append value '{"score":{"name":"time12_sec","objective":"mck_time"}}'
execute unless score skip_digits mck_time matches 1 run data modify storage time time append value '{"text":","}'
execute unless score skip_digits mck_time matches 1 run data modify storage time time append value '{"score":{"name":"time12_10sec","objective":"mck_time"}}'
execute unless score skip_digits mck_time matches 1 run data modify storage time time append value '{"score":{"name":"time12_100sec","objective":"mck_time"}}'

scoreboard players reset skip_digits mck_time