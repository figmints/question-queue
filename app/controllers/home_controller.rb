class HomeController < ApplicationController
  def index
    @questions = Question.all
    @question = Question.new
  end


  private

  def question_params
    params.require(:question).permit(:title)
  end
end
