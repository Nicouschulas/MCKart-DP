scoreboard players set bool mck_temp 0
execute on target store result score bool mck_temp if entity @s[tag=this]


# list of types
execute if score bool mck_temp = 1 if entity @s[tag=mck_shop_interaction] run scoreboard players set type_of mck_temp 1
execute if score bool mck_temp = 1 if entity @s[tag=ranked_board_left_] run scoreboard players set type_of mck_temp 2
execute if score bool mck_temp = 1 if entity @s[tag=ranked_board_right_] run scoreboard players set type_of mck_temp 3
execute if score bool mck_temp = 1 if entity @s[tag=ah.puc.int] run scoreboard players set type_of mck_temp 4
execute if score bool mck_temp = 1 if entity @s[tag=mck_open_lootbox] run scoreboard players set type_of mck_temp 5


# shop
execute if score type_of mck_temp = 1 if score bool mck_temp = 1 run scoreboard players operation temp mck_temp = @s mck_goods_id


# ranked list: left
execute if score type_of mck_temp = 2 if score bool mck_temp = 1 at @s as @e[type=text_display,tag=ranked_board_list,limit=1,sort=nearest] run function mck:rankedboard/on_left
# ranked list: right
execute if score type_of mck_temp = 3 if score bool mck_temp = 1 at @s as @e[type=text_display,tag=ranked_board_list,limit=1,sort=nearest] run function mck:rankedboard/on_right

# puc from Loftcreator's airhockey
execute if score type_of mck_temp = 4 if score bool mck_temp = 1 at @s run function ah:entitys/on_puc



execute if score bool mck_temp = 1 run tag @s add this_interaction
execute if score bool mck_temp = 1 run data remove entity @s interaction