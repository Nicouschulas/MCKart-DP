{
  "data": {
    "storage": {
      "temp": {
        "enderchest": [
          {},
          {},
          {},
          {},
          {}
        ]
      },
      "databases": {
        "input": null
      },
      "ranklist": {
        "players": [
          {
            "data": {
              "id": null,
              "head": null,
              "stats": {
                "rank": null,
                "rank_name": null,
                "rank_time": null,
                "rank_placing": -1
              },
              "track_stats": null
            }
          }
        ],
        "templist": [
          {},
          {},
          {},
          {},
          {},
          {},
          {},
          {},
          {}
        ]
      }
    }
  },
  "execute": {
    "store": {
      "result": {
        "score": {
          "in": "mck_db_bit",
          "run": "data get storage ranklist players[0].data.id"
        }
      }
    },
    "if": [
      {
        "score": {
          "temp": "mck_temp",
          "matches": 1
        },
        "as": "@a",
        "if": {
          "score": {
            "@s": "mck_id",
            "in": "mck_db_bit"
          }
        },
        "run": [
          {
            "function": "mck:player/stats/ranked/update_ranking_time"
          }
        ]
      },
      {
        "if": {
          "score": {
            "temp": "mck_temp",
            "matches": 0
          },
          "if": {
            "score": "in mck_db_bit",
            "matches": "1.."
          }
        },
        "run": [
          {
            "function": "mck:player/stats/ranked/update_ranking_time"
          }
        ]
      },
      {
        "if": {
          "score": "in mck_db_bit",
          "matches": "1.."
        },
        "run": [
          {
            "data modify": {
              "storage ranklist players[0].data.stats.rank": {
                "from": "storage temp enderchest[4].tag.stats.rank"
              }
            }
          },
          {
            "data modify": {
              "storage ranklist players[0].data.stats.rank_time": {
                "from": "storage temp enderchest[4].tag.stats.rank_time"
              }
            }
          },
          {
            "data modify": {
              "storage ranklist players[0].data.stats.rank_name": {
                "from": "storage temp enderchest[4].tag.stats.rank_name"
              }
            }
          },
          {
            "data modify": {
              "storage ranklist players[0].data.stats.rank_placing": {
                "value": -1
              }
            }
          }
        ]
      },
      {
        "if": {
          "score": "in mck_db_bit",
          "matches": "1.."
        },
        "run": [
          {
            "data modify": {
              "storage databases input": {
                "from": "storage ranklist players[0]"
              }
            }
          },
          {
            "execute store result score in mck_db_bit run data get storage ranklist players[0].data.id"
          },
          {
            "execute if": {
              "score": {
                "@a": "mck_id",
                "in": "mck_db_bit"
              }
            },
            "run": [
              {
                "item modify entity @s enderchest.4 mck:ranklist_update_ender"
              }
            ]
          },
          {
            "execute if": {
              "score": "in mck_db_bit",
              "matches": "1.."
            },
            "run": [
              {
                "function": "mck:database/player_set"
              }
            ]
          }
        ]
      },
      {
        "store": {
          "result": {
            "score rank mck_temp run data get storage ranklist players[0].data.stats.rank"
          }
        },
        "unless": {
          "data storage ranklist players[0].data.stats.rank": null,
          "run": [
            {
              "scoreboard players set rank mck_temp -1"
            }
          ]
        }
      },
      {
        "remove": "storage ranklist player",
        "modify": {
          "storage ranklist player.id": {
            "from": "storage ranklist players[0].data.id"
          },
          "storage ranklist player.name": {
            "from": "storage ranklist players[0].data.head.tag.SkullOwner.Name"
          },
          "storage ranklist player.head": {
            "from": "storage ranklist players[0].data.head"
          },
          "storage ranklist player.rank_time": {
            "from": "storage ranklist players[0].data.stats.rank_time"
          },
          "storage ranklist player.rank": {
            "from": "storage ranklist players[0].data.stats.rank"
          },
          "storage ranklist player.rank_name": {
            "from": "storage ranklist players[0].data.stats.rank_name"
          },
          "storage ranklist player.rank_placing": {
            "from": "storage ranklist players[0].data.stats.rank_placing"
          }
        }
      },
      {
        "execute if": {
          "score rank mck_temp matches 1": [
            {
              "data modify": {
                "storage ranklist templist[0] append from storage ranklist player"
              }
            }
          ],
          "if": {
            "score rank mck_temp matches 2": [
              {
                "data modify": {
                  "storage ranklist templist[1] append from storage ranklist player"
                }
              }
            ]
          },
          "if": {
            "score rank mck_temp matches 3": [
              {
                "data modify": {
                  "storage ranklist templist[2] append from storage ranklist player"
                }
              }
            ]
          },
          "if": {
            "score rank mck_temp matches 4": [
              {
                "data modify": {
                  "storage ranklist templist[3] append from storage ranklist player"
                }
              }
            ]
          },
          "if": {
            "score rank mck_temp matches 5": [
              {
                "data modify": {
                  "storage ranklist templist[4] append from storage ranklist player"
                }
              }
            ]
          },
          "if": {
            "score rank mck_temp matches 6": [
              {
                "data modify": {
                  "storage ranklist templist[5] append from storage ranklist player"
                }
              }
            ]
          },
          "if": {
            "score rank mck_temp matches 7": [
              {
                "data modify": {
                  "storage ranklist templist[6] append from storage ranklist player"
                }
              }
            ]
          },
          "if": {
            "score rank mck_temp matches 8": [
              {
                "data modify": {
                  "storage ranklist templist[7] append from storage ranklist player"
                }
              }
            ]
          },
          "if": {
            "score rank mck_temp matches 9": [
              {
                "data modify": {
                  "storage ranklist templist[8] append from storage ranklist player"
                }
              }
            ]
          },
          "if": {
            "score rank mck_temp matches 1..9": [
              {
                "scoreboard players operation ranking_list mck_timer = ranking_list_update mck_admin_settings"
              }
            ]
          }
        ],
        "remove": "storage ranklist players[0]",
        "execute store result bossbar ranklist_sort max run scoreboard players get sorting_all mck_temp",
        "unless": {
          "data storage ranklist players[0]": null,
          "run": [
            {
              "scoreboard players operation ranked_players mck_data = sorting_all mck_temp"
            }
          ]
        }
      }
    ]
  }
}