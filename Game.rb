class Game
  def initialize numQuestions 
    @numQuestions = numQuestions
    @questions_array = []
    @players_array = []

    (0..(numQuestions*2-1)).each do |counter| 
      @questions_array.push( Question.new (counter))
    end

    (1..2).each do |counter|
      @players_array.push (Player.new ( counter ))
    end
  end

  def get_questions_array
    return @questions_array
  end

  def get_players_array
    return @players_array
  end
end