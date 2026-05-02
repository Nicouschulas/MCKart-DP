{
  "remove": {
    "storage": "temp",
    "player"
  },
  "merge": {
    "storage": "temp",
    "player": {
      "data": {
        "id": "$(id)L",
        "name": "",
        "head": {},
        "public": true,
        "stats": {
          "games_played": 0,
          "n_time_played": 0,
          "r_time_played": 0,
          "n_races_played": 0,
          "r_races_played": 0,
          "wins": 0,
          "shrooms_used": 0,
          "coins_collected": 0,
          "coins_spent": 0,
          "kart_fragments_spent": 0,
          "challenge_level": 1,
          "challenge_goal1": 50,
          "challenge_goal2": 1,
          "challenge_goal3": 1,
          "tournaments_won": 0,
          "rank_time": 100000000,
          "rank": 0,
          "rank_name": [
            {
              "text": "\\uaba0 ",
              "color": "white",
              "bold": false
            },
            {
              "translate": "ranklist.rank0",
              "color": "#A1A1A1",
              "bold": true,
              "italic": false
            }
          ],
          "rank_placing": -1,
          "mck_level": 0
        },
        "track_stats": []
      }
    }
  },
  "modify": {
    "storage": "databases",
    "players": {
      "append": {
        "from": "storage temp player"
      }
    },
    "output": {
      "set": {
        "from": "storage temp player"
      }
    }
  }
}