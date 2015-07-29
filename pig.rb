def roll_dice
  rand(1..6)
end

def play_game
  player_total_score = 0
  # last_roll = 0

  while player_total_score < 100
  
     puts "Do you want to roll or hold?"
     input = gets.chomp
     if input == "roll"
        last_roll = roll_dice
        puts "You rolled a #{last_roll}"
        if last_roll == 1
          player_total_score = 0
          puts "You lose."
          break
        else
           player_total_score += last_roll
           puts "Your score is now #{player_total_score}."
        end
      elsif input == "hold"
        puts "Your final score was #{player_total_score}."
        break
      else 
        puts "I didn't understand that, please try again. Answer roll or hold."
      end
    end
    # puts "Your final score was #{player_total_score}."
#       break
end

play_game



# puts "Your final score was #{player_total_score}."
#       break