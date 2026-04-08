function mck:database/track_add

data modify storage databases output.data.name set from storage temp names[0]

data modify storage databases input set from storage databases output
function mck:database/track_set