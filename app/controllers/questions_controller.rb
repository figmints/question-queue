class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    @question = Question.new
  end

  def create
  end
end
