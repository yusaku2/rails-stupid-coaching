class QuestionsController < ApplicationController
  def ask
    @date = Date.today

  end

  def answer
    @question = params[:question]
    if @question == 'I am going to work'
      @answer = "Great!"
    elsif @question[@question.length-1]=='?'
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer= "I don't care, get dressed and go to work!"
    end


  end
end
