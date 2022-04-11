class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer1 = 'Great!'
    @answer2 = 'Silly question, get dressed and go to work!'
    @answer3 = 'I don\'t care, get dressed and go to work!'

    if params[:question] == 'I\'m going to work'
      @answer = @answer1
    elsif params[:question][-1] == '?'
      @answer = @answer2
    else
      @answer = @answer3
    end
  end
end
