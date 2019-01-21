class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @message = params[:message]
    if @message.last == "?"
      # render plain: "Question was: #{@message} Answer: Silly Question..."
      @answer = "Silly Question..."
    elsif @message == "I am going to work"
      @answer = "Great!"
    else
      @answer = "I don't care, go to work!"
    end
  end
end
