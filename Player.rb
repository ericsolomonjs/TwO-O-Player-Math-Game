class Player 
  def initialize (id)
    @questions_answered = []
    @score = 0
    @id = id
  end

  def get_score
    return @score
  end
  
  def get_questions_answered
    return @questions_answered
  end

  def inc_score
    @score = @score + 1
  end

  def set_question_answered(question)
    @questions_answered.push(question)
  end
end