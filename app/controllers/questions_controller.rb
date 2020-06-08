class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @coach_answer = coach_answer(@question)
  end

  def coach_answer(your_message)
    response = ''
    if your_message.downcase == 'i am going to work right now!'
      response
    elsif your_message.include?('?')
      response = 'Silly question, get dressed and go to work!'
    else
      response = "I don't care, get dressed and go to work!"
    end
    response
  end
end
