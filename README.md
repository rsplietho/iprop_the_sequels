# IPROP Game Selector
Recommends games based on genre

## Tutorial:
### DB Setup
- Remove "_EXAMPLE" from db_credentials.ini
- Add postgre password in db_credentials

### Loading games into the database
- Run `db_loader.py` to import the games into the database, let it run for the time desired: the longer it runs, the more games are loaded inside the database.
    - Make sure you have a JSON file named `games.json` inside the root directory which contains (at least) the following items inside an object:
        1. `appid`
        2. `name`
        3. `score`
        4. `genres`
            1. `id` (Primary Key)
            2. `description`
    - Before running the database must be cleared by running the following command:

        ```
        DELETE FROM games;
        ```

- Make sure the games have loaded in correctly by running the following PostgreSQL command:
    ```
    SELECT * FROM games, genres ORDER BY name;
    ```
- This should list all games and genres you wanted to add to the base, sorted alphabetically by name.