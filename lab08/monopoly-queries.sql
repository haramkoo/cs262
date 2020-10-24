-- Get the number of Game records.
SELECT *
  FROM Game
  ;

-- Get the player records.
SELECT * 
  FROM Player
  ;

-- Get all the users with Calvin email addresses.
  SELECT *
  FROM Player
  WHERE emailAddress LIKE '%calvin%'
  ;

  -- Get the highest score ever recorded.
  SELECT score
    FROM PlayerGame
  ORDER BY score DESC
   LIMIT 1
   ;

  -- Get the cross-product of all the tables.
  SELECT *
  FROM Player, PlayerGame, Game
  ;


  -- Lab07
  SELECT *
  FROM Property;

  -- lab08 8.1 a
  -- SELECT *
  -- FROM Game
  -- ORDER BY time DESC;

  -- -- lab08 8.1 b
  -- SELECT *
  -- FROM Game
  -- WHERE time > 2020-10-10
  --   AND time < 2020-10-18;

  -- -- lab08 8.1 c
  -- SELECT *
  -- FROM Player
  -- WHERE name IS NOT NULL;
  
  -- -- lab08 8.1 d
  -- SELECT *
  -- FROM PlayerGame
  -- WHERE score > 2000;

  -- -- lab08 8.1 e
  -- SELECT *
  -- FROM player
  -- WHERE emailAddress LIKE '%@gmail%';
  

  -- -- lab08 8.2 a
  -- SELECT *
  -- FROM PlayerGame
  -- WHERE PlayerGame.playerID = 2
  --   ORDER BY score;

  -- -- lab08 8.2 b
  -- SELECT Player.name, score
  -- FROM Player, PlayerGame, Game
  -- WHERE Game.time = '2006-06-28 13:20:00'
  --   AND player.ID = PlayerGame.playerID
  --   AND game.ID = PlayerGame.gameID
  --   ORDER BY PlayerGame.score DESC
  --   LIMIT 1;

  -- -- lab08 8.2 c
  -- it prevents of having any duplicates added to the table.

  -- lab08 8.2 d
  -- Whenever one want's to find the same name or some sort from the same table. 

  
  


