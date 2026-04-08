data modify entity @s HandItems[0].tag.bot_checkpoints append from entity @s HandItems[0].tag.bot_checkpoints[0]
data remove entity @s HandItems[0].tag.bot_checkpoints[0]
scoreboard players set @s mck_time 0
function mck:bots/set_checkpoint