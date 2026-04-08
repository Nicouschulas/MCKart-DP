execute if data storage temp itemboxes[0] run data modify storage temp itembox.pos set from storage temp itemboxes[0]
execute if data storage temp itemboxes[0] run data modify storage temp itembox.cooldown set value 1
execute if data storage temp itemboxes[0] run data modify storage lobby ranked[0].itemboxes_list append from storage temp itembox
execute if data storage temp itemboxes[0] run data remove storage temp itemboxes[0]
execute if data storage temp itemboxes[0] run function mck:lobby/ranked/start/prepare_itemboxes