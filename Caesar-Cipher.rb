# Defines the caesar_cipher function with parameters user_string (the message) and shift factor (how many letters it will shift to encrypt)
def caesar_cipher(user_string, shift_amt)
  # If the user_string is lowercase,
  user_string.length.times do |index|
    if /[a-z]/.match(user_string[index])
      letter = user_string[index].ord + shift_amt
      if letter > "z".ord
        user_string[index] = (letter - 26).chr
      else
        user_string[index] = letter.chr
      end
      # Else if the user_string is uppercase
    elsif /[A-Z]/.match(user_string[index])
      letter = user_string[index].ord + shift_amt
      if letter > "Z".ord
        user_string[index] = (letter - 26).chr
      else
        user_string[index] = letter.chr
      end
    end
  end
  # Return the user string
  return user_string
end

# While program is running, execute this task - until user enters quit
while true
  puts "What string do you need encrypted? "
  user_string = gets.chomp #Gathers string to be encryped from user

  if user_string.downcase == 'quit'
    break
  else
    puts "What shift factor would you like to use? "
    shift_amt = gets.to_i # Gathers shift factor in integer form
    user_string = caesar_cipher(user_string, shift_amt) #Applies function caesar_cipher to user_string with new shift_factor
    puts user_string # Puts shifted user string in console
  end
end
