# _TURTLE TIPPERS_

_*Epicodus C# week-5 Group Code Review Project, 12-22-16*_

by Anne Belka; Annie Sonna; Brad Copenhaver and Bryant Wang.


##Description

Turtle Tippers is a card-based two-player battle game. The goal is to tip over all of your opponent's turtles while keeping your own turtles upright.

Here are the rules of the game:
- Each player starts with a randomly generated deck of 30 cards.
- There are two types of cards: Animal cards used for the attack/defense and fruits cards for reviving turtles.
- Each animal card has two numbers; the bottom left number defines the "attack power" while the one on the bottom right is the "life points."
- Each player will have a randomly selected set of 5 cards in hand to start.
- The computer randomly selects which player goes first.
- From the in-hand cards, player 1 can select any number of cards (including zero) to put in play.
- Cards played from the hand will be replaced according to the "draw limit" set at game start.
- After player 1 places cards in play, player 2 also chooses cards from their hand to put in play.
- When both players have their desired cards in play, the combat round begins.
- Player 1 chooses one of their own in-play cards (attacker) and one of their opponent's in-play cards (target) to fight.
- The attack power for each card selected is applied to the life points of the other card. (During battle, both the attacker and target cards attack each other.)
- Player 1 continues selecting attackers and targets until each available attacker has fought once (Case 1) or there are no targets left (Case 2).
- Case 1: Combat continues, but now player 2 chooses attackers and targets from their in-play cards.
- Case 2: Any valid attacker that has not fought yet will tip over one of player 2's turtles.
- After both players have a chance to choose attackers/targets and tip turtles, the round is over and a new round begins with players choosing cards from their hands again, but the player who goes first switches.
- The game is over when either player has all of their turtles tipped over or one player runs out of cards in their draw deck.


##Setup/Installation requirements

1. Clone this repository to desktop.
2. Navigate to the repository in the command line.
3. Run the following command `dnu restore`
4. You will need a database called `turtle-tippers` with the `cards`, `decks`, and `players` tables.
5. Connect to a local SQL server and use the script `turtle_tippers.sql` to create the game database.
8. Run `dnx kestrel` to start a local web server.
9. In your browser, navigate to http://localhost:5004/

## Known Bugs

None yet due to lack of testing.


## Technologies Used

1. C#
2. Git
4. Nancy Web Framework
5. SQL
6. Html/CSS
8. Razor view engine


## Link to the project on GitHub

https://github.com/bryantwang1/turtle_tippers


## Copyright and license information

Copyright (c) 2016 Anne Belka; Annie Sonna; Brad Copenhaver; Bryant Wang.
