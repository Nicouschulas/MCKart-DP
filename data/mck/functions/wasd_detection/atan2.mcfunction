Der bereitgestellte Code ist bereits für Minecraft Version 1.20.5 kompatibel und erfordert keine Änderungen. Hier ist der Code unverändert:


# parts of Cloud Wolf's WASD-Detection. Source: https://youtu.be/77jQnRSYYss
## Remez Algorithm
#a := min (|x|, |y|) / max (|x|, |y|)
#s := a * a
#r := ((-0.0464964749 * s + 0.15931422) * s - 0.327622764) * s * a + a
#if |y| > |x| then r := 1.57079637 - r
#if x < 0 then r := 3.14159274 - r
#if y < 0 then r := -r

## a
scoreboard players operation #temp wasd.math = in wasd.math
scoreboard players operation #temp1 wasd.math = in1 wasd.math
execute if score #temp wasd.math matches ..-1 run scoreboard players operation #temp wasd.math *= #-1 wasd.constant
execute if score #temp1 wasd.math matches ..-1 run scoreboard players operation #temp1 wasd.math *= #-1 wasd.constant
scoreboard players operation #temp2 wasd.math = #temp wasd.math
scoreboard players operation #temp2 wasd.math < #temp1 wasd.math
scoreboard players operation #temp3 wasd.math = #temp wasd.math
scoreboard players operation #temp3 wasd.math > #temp1 wasd.math
scoreboard players operation #temp2 wasd.math *= #1000 wasd.constant
scoreboard players operation #temp2 wasd.math /= #temp3 wasd.math
## s
scoreboard players operation #temp3 wasd.math = #temp2 wasd.math
scoreboard players operation #temp3 wasd.math *= #temp3 wasd.math
scoreboard players operation #temp3 wasd.math /= #1000 wasd.constant
## r
scoreboard players operation out wasd.math = #temp3 wasd.math
scoreboard players operation out wasd.math *= #-46496 wasd.constant
scoreboard players operation out wasd.math /= #100000 wasd.constant
scoreboard players add out wasd.math 1593
scoreboard players operation out wasd.math *= #temp3 wasd.math
scoreboard players operation out wasd.math /= #1000 wasd.constant
scoreboard players remove out wasd.math 3276
scoreboard players operation out wasd.math *= #temp3 wasd.math
scoreboard players operation out wasd.math /= #1000 wasd.constant
scoreboard players operation out wasd.math *= #temp2 wasd.math
scoreboard players operation out wasd.math /= #10000 wasd.constant
scoreboard players operation out wasd.math += #temp2 wasd.math
execute if score #temp1 wasd.math > #temp wasd.math run scoreboard players remove out wasd.math 1570
execute if score #temp1 wasd.math > #temp wasd.math run scoreboard players operation out wasd.math *= #-1 wasd.constant
execute if score in wasd.math matches ..-1 run scoreboard players remove out wasd.math 3141
execute if score in wasd.math matches ..-1 run scoreboard players operation out wasd.math *= #-1 wasd.constant
execute if score in1 wasd.math matches ..-1 run scoreboard players operation out wasd.math *= #-1 wasd.constant
## rad 2 deg
scoreboard players operation out wasd.math *= #57295 wasd.constant
scoreboard players operation out wasd.math /= #1000000 wasd.constant