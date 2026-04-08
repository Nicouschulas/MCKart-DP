item replace block 0 0 0 container.0 with book

data modify block 0 0 0 Items[0].tag.stats.games_played set value 0
data modify block 0 0 0 Items[0].tag.stats.n_time_played set value 0
data modify block 0 0 0 Items[0].tag.stats.r_time_played set value 0
data modify block 0 0 0 Items[0].tag.stats.n_races_played set value 0
data modify block 0 0 0 Items[0].tag.stats.r_races_played set value 0
data modify block 0 0 0 Items[0].tag.stats.wins set value 0
data modify block 0 0 0 Items[0].tag.stats.coins_collected set value 0
data modify block 0 0 0 Items[0].tag.stats.coins_spent set value 0
data modify block 0 0 0 Items[0].tag.stats.challenge_level set value 1
data modify block 0 0 0 Items[0].tag.stats.challenge_goal1 set value 50
data modify block 0 0 0 Items[0].tag.stats.challenge_goal2 set value 1
data modify block 0 0 0 Items[0].tag.stats.challenge_goal3 set value 1
data modify block 0 0 0 Items[0].tag.stats.tournaments_won set value 0
data modify block 0 0 0 Items[0].tag.stats.rank set value 0
data modify block 0 0 0 Items[0].tag.stats.rank_time set value 100000000
data modify block 0 0 0 Items[0].tag.stats.rank_name set value '{"translate":"ranklist.rank0","color":"#A1A1A1","bold":true,"italic":false}'
data modify block 0 0 0 Items[0].tag.stats.rank_placing set value -1

data modify block 0 0 0 Items[0].tag.track_stats set value []

item replace entity @s enderchest.4 from block 0 0 0 container.0