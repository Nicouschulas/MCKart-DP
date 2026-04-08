scoreboard players add place mck_temp 1

execute if score place mck_temp matches 1 run data modify storage temp text append value '{"text":"1. ","color":"#FFE76E","bold":true}'
execute if score place mck_temp matches 2 run data modify storage temp text append value '{"text":"2. ","color":"#E3D6C8","bold":true}'
execute if score place mck_temp matches 3 run data modify storage temp text append value '{"text":"3. ","color":"#AD8E72","bold":true}'
execute if score place mck_temp matches 4 run data modify storage temp text append value '{"text":"4. ","color":"#A8A8A8","bold":false}'
execute if score place mck_temp matches 5 run data modify storage temp text append value '{"text":"5. ","color":"#A8A8A8","bold":false}'
execute if score place mck_temp matches 6 run data modify storage temp text append value '{"text":"6. ","color":"#A8A8A8","bold":false}'
execute if score place mck_temp matches 7 run data modify storage temp text append value '{"text":"7. ","color":"#A8A8A8","bold":false}'
execute if score place mck_temp matches 8 run data modify storage temp text append value '{"text":"8. ","color":"#A8A8A8","bold":false}'
execute if score place mck_temp matches 9 run data modify storage temp text append value '{"text":"9. ","color":"#A8A8A8","bold":false}'
execute if score place mck_temp matches 10 run data modify storage temp text append value '{"text":"10. ","color":"#A8A8A8","bold":false}'
execute if score place mck_temp matches 11 run data modify storage temp text append value '{"text":"11. ","color":"#A8A8A8","bold":false}'
execute if score place mck_temp matches 12 run data modify storage temp text append value '{"text":"12. ","color":"#A8A8A8","bold":false}'
execute if score place mck_temp matches 13 run data modify storage temp text append value '{"text":"13. ","color":"#A8A8A8","bold":false}'
execute if score place mck_temp matches 14 run data modify storage temp text append value '{"text":"14. ","color":"#A8A8A8","bold":false}'
execute if score place mck_temp matches 15 run data modify storage temp text append value '{"text":"15. ","color":"#A8A8A8","bold":false}'

execute unless data storage temp list[0] run data modify storage temp text append value '{"translate":"rankedboard.empty","color":"#8B9D9E","bold":false}'


execute if data storage temp list[0] store result score time mck_time run data get storage temp list[0].rank_time
data modify storage temp div set value '{"text":" - "}'

execute if data storage temp list[0] if score place mck_temp matches 1 run function mck:rankedboard/place/1
execute if data storage temp list[0] if score place mck_temp matches 2 run function mck:rankedboard/place/2
execute if data storage temp list[0] if score place mck_temp matches 3 run function mck:rankedboard/place/3
execute if data storage temp list[0] if score place mck_temp matches 4 run function mck:rankedboard/place/4
execute if data storage temp list[0] if score place mck_temp matches 5 run function mck:rankedboard/place/5
execute if data storage temp list[0] if score place mck_temp matches 6 run function mck:rankedboard/place/6
execute if data storage temp list[0] if score place mck_temp matches 7 run function mck:rankedboard/place/7
execute if data storage temp list[0] if score place mck_temp matches 8 run function mck:rankedboard/place/8
execute if data storage temp list[0] if score place mck_temp matches 9 run function mck:rankedboard/place/9
execute if data storage temp list[0] if score place mck_temp matches 10 run function mck:rankedboard/place/10
execute if data storage temp list[0] if score place mck_temp matches 11 run function mck:rankedboard/place/11
execute if data storage temp list[0] if score place mck_temp matches 12 run function mck:rankedboard/place/12
execute if data storage temp list[0] if score place mck_temp matches 13 run function mck:rankedboard/place/13
execute if data storage temp list[0] if score place mck_temp matches 14 run function mck:rankedboard/place/14
execute if data storage temp list[0] if score place mck_temp matches 15 run function mck:rankedboard/place/15


execute if data storage temp list[0] run data remove storage temp list[0]


data modify storage temp text append value '{"text":"\\n"}'

execute if score place mck_temp matches ..14 run function mck:rankedboard/list_players