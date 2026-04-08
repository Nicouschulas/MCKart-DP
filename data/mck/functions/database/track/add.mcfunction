data remove storage temp track
$data merge storage temp {track:{data:{id:$(id)L, name:'{"text": "None","italic": true, "color": "gray"}', n_times_played:0, r_times_played:0, n_best: {id:-1, name:'---', time:0, recording: []}, r_best: {id:-1, name:'---', time:0, recording: []}}}}

data modify storage databases tracks append from storage temp track
data modify storage databases output set from storage temp track