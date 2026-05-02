{
  "text": "[",
  "color": "gray",
  "bold": true
},
{
  "translate": "system",
  "color": "gold",
  "bold": false
},
{
  "text": "] "
},
{
  "translate": "parkour.finish",
  "color": "white",
  "bold": false
}
],
"playsound": {
  "sound": "minecraft:entity.player.levelup",
  "category": "master",
  "selector": "@s[scores={mck_setting1=1}]",
  "x": "~",
  "y": "~",
  "z": "~",
  "volume": 1,
  "pitch": 1.2
},
"scoreboard players add @s mck_bank 1",
"scoreboard players set bool mck_temp 0",
"execute store result score temp mck_temp run data get storage databases parkour.best_time",
"execute if score @s mck_parkour < temp mck_temp run scoreboard players set bool mck_temp 1",
"execute if score bool mck_temp matches 1 store result storage databases parkour.best_time int 1 run scoreboard players get @s mck_parkour",
"execute if score bool mck_temp matches 1 run data modify storage databases parkour.best_name set from entity @s EnderItems[1].tag.SkullOwner.Name",
"execute if score bool mck_temp matches 1 run function mck:parkour/update",
"execute if score bool mck_temp matches 1 run tellraw @a \"\"",
"execute if score bool mck_temp matches 1 run tellraw @a [{\"text\":\"[\",\"color\":\"gray\",\"bold\":true},{\"translate\":\"system\",\"color\":\"gold\",\"bold\":false},{\"text\":\"] \",\"color\":\"white\"},{\"translate\":\"parkour.new1\",\"color\":\"#AAD474\",\"bold\":true}]",
"execute if score bool mck_temp matches 1 run tellraw @a [{\"text\":\"[\",\"color\":\"gray\",\"bold\":true},{\"translate\":\"system\",\"color\":\"gold\",\"bold\":false},{\"text\":\"] \",\"color\":\"white\"},{\"selector\":\"@s\",\"color\":\"#F7F7F7\"},{\"translate\":\"parkour.new2\",\"color\":\"#C7C7C7\",\"bold\":true}]",
"execute if score bool mck_temp matches 1 run tellraw @a \"\"",
"execute if score bool mck_temp matches 1 run playsound minecraft:ui.toast.challenge_complete master @s[scores={mck_setting1=1}] ~ ~ ~ 1 1",
"scoreboard players reset @s mck_parkour",
"execute if score @s mck_challenge_level matches 4 if score @s mck_quest1 matches 0.. run scoreboard players add @s mck_quest1 1",
"function": "mck:player/challenges/reached"
}