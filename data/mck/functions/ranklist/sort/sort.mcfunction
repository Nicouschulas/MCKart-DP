execute store result score timea mck_temp run data get storage ranklist best.rank_time
execute store result score timeb mck_temp run data get storage ranklist sortlist[0].rank_time

execute if score timeb mck_temp < timea mck_temp run function mck:ranklist/sort/better


execute unless score timeb mck_temp < timea mck_temp run data modify storage ranklist sortlist append from storage ranklist sortlist[0]
execute unless score timeb mck_temp < timea mck_temp run data remove storage ranklist sortlist[0]

scoreboard players remove sorting mck_timer 1


scoreboard players operation ranking_list mck_timer = ranking_list_update mck_admin_settings