HOMEWORK 3

* What are the (active) URLs for your data service?

- "/", "/players", "/players/:id", "/players/:id", '/players', 'players/:id', and "/pieces".

* Which of these endpoints implement actions that are idempotent? nullipotent?

- GET, PUT and DELETE are idempotent. 
- SELECT Player.name, PlayerGame.pieceLocation
    FROM Game, PlayerGame, Player
    WHERE Game.time = '2006-06-29 18:41:00'
        AND Player.ID = PlayerGame.playerID
        AND game.ID = PlayerGame.gameID;

* Is the service RESTful? If not, why not? If so, what key features make it RESTful.

- yes, because it has key features such as Client-server architecture, Uniform interface, and statelessness. 

* Is there any evidence in your implementation of an impedance mismatch?

- No, because necessary objects seems to be mapped to database tables by a relational schema.   