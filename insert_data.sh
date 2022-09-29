#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

# year,round,winner,opponent,winner_goals,opponent_goals

TRUNCATE="$($PSQL "TRUNCATE TABLE games, teams")"

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WIN_GOALS OPP_GOALS
do
  if [[ $YEAR != year ]]
  then
      #add team data to teams
      # check if team already in teams
      # if not, add
      WINNER_ID="$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")"
      if [[ -z $WINNER_ID ]]
      then
        INSERT_TEAM_RESULT="$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")"
        WINNER_ID="$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")"
      fi

      OPPONENT_ID="$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")"
      if [[ -z $OPPONENT_ID ]]
      then
        INSERT_TEAM_RESULT="$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")"
        OPPONENT_ID="$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")"
      fi
    
      # add game data to games
      # get winner ID
      WINNER_ID="$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")"
      # get opponent ID
      OPPONENT_ID="$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")"
      
      ADD_TO_DB="$($PSQL "INSERT INTO games(year, winner_id, opponent_id, winner_goals, opponent_goals, round) VALUES($YEAR, '$WINNER_ID', '$OPPONENT_ID', $WIN_GOALS, $OPP_GOALS, '$ROUND')")"
    
  fi
done
echo "$($PSQL "SELECT * FROM teams")"
echo "$($PSQL "SELECT * FROM games")"

