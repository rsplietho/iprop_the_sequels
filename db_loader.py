from encodings import utf_8
from operator import contains
import database as db
import json

def main():
    steam_games_json = open("filtered_gamelist.json", encoding="utf_8")
    steam_games = json.load(steam_games_json)
    steam_games_json.close()
    for game in steam_games['games']:
        genres = db.get_genres()
        game_genres = game['genres']
        for genre in game_genres:
            #genre_values = genre.values()
            listgenre = list(genre.values())
            listgenre[0] = int(listgenre[0])
            tuplegenre = tuple(listgenre)
            if tuplegenre not in genres:
                print("inserting genre...")
                db.insert_genre(genre['id'], genre['description'])
        


        db.insert_game(game['appid'], game['name'].replace("'", "''"), game['score'], genre['description'])

if __name__ == "__main__":
    main()
