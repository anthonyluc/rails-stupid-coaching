class QuestionsController < ApplicationController
  def answer
    @query = params['query']
    if @query.include? "?"
      @answer = "Silly question, get dressed and go to work!"
    elsif @query.strip == "I am going to work right now!" || @query.strip == "I AM GOING TO WORK RIGHT NOW!"
      @answer = ""
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

  def ask
  end
end
