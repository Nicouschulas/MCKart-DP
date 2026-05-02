{
  "Silent": 1,
  "Invulnerable": 1,
  "PersistenceRequired": 1,
  "Type": "red",
  "CanPickUpLoot": 0,
  "Tags": ["bot", "temp"],
  "HandItems": [
    {
      "id": "minecraft:diamond",
      "Count": 1,
      "components": {
        "minecraft:custom_model_data": 101,
        "minecraft:killme": 1
      }
    },
    {}
  ],
  "Passengers": [
    {
      "id": "minecraft:item_display",
      "Tags": ["item_mount"],
      "transformation": {
        "left_rotation": [0, 0, 0, 1],
        "right_rotation": [0, 0, 0, 1],
        "translation": [0, 0.6, 0],
        "scale": [2, 2, 2]
      },
      "teleport_duration": 2,
      "item": {
        "id": "minecraft:air",
        "Count": 1
      }
    }
  ]
}