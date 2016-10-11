# Exercise 3: Vector and function practice

# Create a vector `marbles` with 6 different colors in it (representing marbles)
marbles <- c("blue","yellow",'red','black','orange','mint')

# Use the `sample` function to select a single marble
my.marble <- sample(marbles,1)

# Write a function MarbleGame that does the following:
# - Takes in a `guess` of a marble color
# - Randomly samples a marble
# - Returns whether or not the person guessed accurately (preferrably a full phrase)
MarbleGame <- function(guess){
  marble <- sample(marbles,1)
  if (marble == guess) {return("You win!")}
  else {return("You lost!")}
}

# Play the marble game!


# Bonus: Play the marble game until you win, keeping track of how many tries you take
have.not.win <- TRUE
tries <- 0
while(have.not.win){
  tries <- tries+1
  result <- MarbleGame('red')
  if (result == 'You win!')
    have.not.win <- FALSE
}
print(tries)
## Double bonus(answer not provided): play the game 1000X (until you win) and track the average number of tries
# Is it what you expected based on the probability