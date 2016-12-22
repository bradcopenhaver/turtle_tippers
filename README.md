# _TURTLE TIPPERS_

_*Epicodus C# week-5 Group Code Review Project, 12-22-16*_

by Anne Belka; Annie Sonna; Brad Copenhaver and Bryant Wang.


##Description

This webpage is a fun game with the goal to tip off all your opponent turtles. Here are the rules of the game:
- Computer will generate a desk of 30 cards for each round of game.
- From that desk, each player will have a randomly selected set of 5 cards in hand to start with.
- Computer randomly select first player.
- From the in-hand cards, player 1 can select up to two cards to display in_play then click "Play card"; They can also click without selection to skip their turn.
- Each player has the option to play at each turn and the starting position is alternated by turns.
- Turn is defined by each selecting cards and then having the opportunity to each attack once.
- In other to reach their turtles, you will need to eliminate all the cards they have in play.
- There are two types of cards: Animal cards used for the attack and fruits cards for redemption.
- Each animal cards has numbers; the bottom left number defines the "attack power" while the one on the bottom right is the "number of life left.
- Each attack equate to one life lost for both the attacker and the victim.
- One you have eliminated all your opponent's cards, your next play will tip off as many turtles as the number of cards in-play for you;(maximum of 5).
- Fruit card has the power to flip back the one turtle (redemption).
- Once a player has all his turtles flipped, it's the end of the game and his opponent wins.
- Or if the players run out of cards; the player with more cards remaining in-play is the winner.
This webpage demonstrates database usage with many-to-many relationships.


###Objective from Epicodus page

- Spend time together as a team practicing effective communication and positive collaboration.
- Have a working product ready to present at the end of the week trade show (12/22/16).
- Determine the MVP for the project and focus on that scope first to a working prototype; then improve if time allows.
  MVP:
  * 2-player functional game.
  * Random player decks - 30.
  * Random hands - 5.
  * Play area object.
      - Card vs Card
      - Card vs Turtle
      - Card limit
      - Winner and loser.
      - Coin flip who goes first.


##Specifications:

I1. Input 1
 - See the specDoc.txt file for all the specifications related to this website.

##Setup/Installation requirements

1. Clone this repository to desktop.
2. Use powershell under window machine to navigate to the cloned project folder.
3. Run the following command "dnu restore"
4. You will need a database called "turtle-tippers" with the "cards", "decks" and "players" tables.
5. Connect to your server and use the following command to create the database:
*
       > CREATE DATABASE turtle-tippers;
       > GO
       > USE turtle-tippers;
       > GO
       > CREATE TABLE cards (id INT IDENTITY(1,1), name VARCHAR(255), image VARCHAR(255), flavor_text VARCHAR(255), attack INT, defense INT, revive INT, tier INT);
       > GO
       > CREATE TABLE decks (id INT IDENTITY(1,1), card_id INT, player_id INT, in_hand BIT, in_play BIT, discard BIT, HP INT);
       > GO
       > CREATE TABLE players (id INT IDENTITY(1,1), turtles INT, name VARCHAR(255));
       > GO
 *      
6. Create a backup of above database called "turtle-tippers_test" and restore it.
7. When writing your test, you can use the following command line on PowerShell for testing: "dnx test".  
8. Run "dnx kestel" command to run this app
9. In your browser, navigate to http://localhost:5004/
10. Then you are ready to start turtle tipping!

## Known Bugs
TBD.


## Technologies Used

1. html
2. github
3. Atom
4. Nancy Web Application
5. SQL Server Management
6. C#
7. Xunit
8. Kestrel Server
9. DNX
10. Mono


## Link to the project on GitHub Pages

https://github.com/bryantwang1/turtle_tippers


## Copyright and license information

Copyright (c) 2016 Anne Belka; Annie Sonna; Brad Copenhaver; Bryant Wang.
