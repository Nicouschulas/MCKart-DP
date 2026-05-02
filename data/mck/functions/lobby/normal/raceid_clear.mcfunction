{
  "functions": {
    "mck:lobby/normal/raceid_repeat": [
      "data merge storage temp {list1:[], list2:[]}",
      "data modify storage temp list1 set from storage lobby races",
      "data modify storage lobby races set from storage temp list2",
      "scoreboard players set lobbyraceid mck_temp 0"
    ]
  }
}