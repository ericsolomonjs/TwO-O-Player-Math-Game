def Question
  @@counter = 0
  def initialize 
    @@counter = @@counter+1
    @assignment_id = id
    @question_answer = self.generate_question_answer
    @question = @question_answer [0]
    @answer = @question_answer [1]
  end
  
  def generate_question_answer
    num1 = rand(1..20)
    num2 = rand(1..20)
    answer = num1 + num2
    question = 'What does #{num1} plus #{num2} equal?'

    return [question, answer]
  end

  def is_answer_correct? (answer)
    if answer == @answer 
      return true
    end
    return false
  end
end