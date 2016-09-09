class QuestionsController < ApplicationController

  def index
    @questions = Question.all
    # @question = Question.new
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
    @answers = Answer.all
  end

  def new
    @question = Question.new
  end

  def edit
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

    # @answer = Answer.new(answer_params)
    # @answer.user = current_user
    #
    # if @answer.save
    #   redirect_to question_path
    # else
    #   # flash[:errors] = @question.errors.full_messages.join(". ")
    #   redirect_to question_path
    # end
  end


  private

  def question_params
    params.require(:question).permit(:title, :description, :department)
  end

  def answer_params
    params.require(:answer).permit(:answer)
  end
end
