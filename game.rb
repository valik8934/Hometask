 p "Welcome to 'Get my number!'" , "What is your name?"
 name= gets.chomp
 p "Hello, #{name}!"
 rand(100) +1
 target= rand(100) +1
 p "I've got a random number between 1 and 100." ,"Can you guess it?"
 num_guesses= 0
 guessed_it = false
until num_guesses == 10 || guessed_it
 remaining_guesses = 10- num_guesses
 puts "#{remaining_guesses} guesses left."
 print "Make a guess: "
 guess= gets.chomp
 guess= guess.to_i
 num_guesses += 1
 if
  guess<target
  p "«Oops. Your guess was Low»"
 elsif
  guess>target
  p "«Oops. Your guess was High»"
 elsif
  guess == target
  p "Good job, #{name}!" ,"You guessed my number in #{num_guesses} guesses!"
  guessed_it = true
 end
end
 unless guessed_it
   p "Sorry. You didn't get my number. (It was #{target}.)"
 end