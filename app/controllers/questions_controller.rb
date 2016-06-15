class QuestionsController < ApplicationController

  def index
    @questions = Question.all
    # @question = Question.new
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    @question.user = current_user

    if @question.save
      redirect_to questions_path
    else
      # flash[:errors] = @question.errors.full_messages.join(". ")
      redirect_to root_path
    end
  end

  private

  def question_params
    params.require(:question).permit(:title, :department)
  end
end
