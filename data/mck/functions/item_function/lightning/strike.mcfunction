scoreboard players add @s mck_stun 30
function mck:player/drive/tumble

particle minecraft:flash ~ ~ ~ 0 0 0 0 4
playsound minecraft:entity.lightning_bolt.thunder master @a[scores={mck_setting1=1}] ~ ~ ~ 1 2