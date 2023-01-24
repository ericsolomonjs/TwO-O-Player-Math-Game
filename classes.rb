require './Game.rb'
require './Player.rb'
require './Question.rb'

def execute_turn id questionCounter
  # fetches question from game instance
  question = game.questions_array[questionCounter].question 
  #asks the question
  puts question
  #gets the response
  response = gets.chomp.to_i
  game.get_players_array[id].set_question_answered(question)
  is_correct = game.get_players_array[id].is_answer_correct? (response)
  if game.get_players_array[id].is_answer_correct? (response)
    puts "That's right!"
    game.get_players_array[id].inc_score
  else 
    puts "Wrong answer!"
  end
  score_string_parts = [
    game.get_players_array[0].get_score,
    game.get_players_array[0].get_questions_answered.length,
    game.get_players_array[1].get_score,
    game.get_players_array[1].get_questions_answered.length
  ]
  #after player 2 turn display the scoreboard
  score_string = 'P1: #{score_string_parts[0]}/#{score_string_parts[1]} vs P2: #{score_string_parts[2]}/#{score_string_parts[3]}'
  
  puts score_string
  end_turn_string = "----- NEW TURN -----"
  puts end_turn_string
end

## Client execution code here
#create game with 3 questions per player
game = Game.new (3) 
#iterate through array of questions
game.get_questions_arr.each |questionCounter|
  if questionCounter & 1 == 1 #execute if odd player 1
    execute_turn 0 questionCounter
  else # if even then player 2
    execute_turn 1 questionCounter
  end
end