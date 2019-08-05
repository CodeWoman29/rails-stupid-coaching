class QuestionsController < ApplicationController

  def ask
  end

  def answer
    if params[:message] == "i am going to work!"
      "Great !"
    elsif params[:message].end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def show
    @question = QUESTIONS[params[:message].to_i]
  end

end
