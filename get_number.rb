# Adivina el numero
# Written by: Francesc
# You must die; I alone I'm Best !!!

puts "Bienvendio a 'Adivina el numero !'"
print "Como te llamas? "
input = gets
name = input.chomp
puts "Hola, #{name.capitalize} !"
puts "Voy a pensar en un numero del 1 al 100."
puts "Seras capaz de adivinarlo?"

target = rand(100) + 1

# Track how many guesses the player has made.
num_guesses = 0

# Track whether the player has guessed correctly.
guessed_it = false

until num_guesses == 10 || guessed_it

  puts "Tienes #{10 - num_guesses} intentos."
  print "Dime el numero: "
  guess = gets.to_i

  num_guesses += 1

# Compare the guess to the target.
# Print the appropriate message.
  if guess < target
    puts "Oops. Demasiado BAJO."
  elsif guess > target
    puts "Oops. Demasiado ALTO."
  elsif guess == target
    puts "Muy Bien, #{name.capitalize}!"
    puts "Has Adivinado el numero en #{num_guesses} intentos!"
    guessed_it = true
  end
end

# If player ran out of turns, tell them what the number was.
unless guessed_it
  puts "Lo siento mucho. No has acertado el numero. (era #{target}.)"
end
