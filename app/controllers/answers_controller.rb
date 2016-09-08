class AnswersController < ApplicationController

  def index
    @answers = Answer.all
  end

  def show
    @answer = Answer.find(params[:id])
  end

  def new
    @answer = Answer.new
  end

  def edit
  end

  def create
    @answer = Answer.new(answer_params)
    @answer.user = current_user

    if @answer.save
      redirect_to question_path
    else
      redirect_to root_path
    end
  end

  def answer_params
    params.require(:answer).permit(:answer)
  end

end
