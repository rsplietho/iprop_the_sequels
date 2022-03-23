import database as db
import random


def main():
    genres = db.get_genres()
    for genre in genres:
        print(genre[1])
    chosen_genre = input("Choose a genre: ")
    correct_genre = False
    while correct_genre == False:
        for genre in genres:
            if chosen_genre == genre[1]:
                correct_genre = True
                break
            else:
                continue
        if correct_genre == True:
            break
        print("Not a genre")
        chosen_genre = input("Choose a genre: ")
    
    games = db.get_games(chosen_genre)
#    suggestions= []
#    for i in [1, 2, 3, 4, 5]:
#        suggestion = random.randint(0, len(games))
#        suggestions.append(suggestion)
#    for game in suggestions:
    for game in games:
        print(game[0])
    

if __name__ == "__main__":
    main()
