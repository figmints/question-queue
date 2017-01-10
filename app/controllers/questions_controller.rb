class QuestionsController < ApplicationController

  def index
    @questions = Question.text_search(params[:query]).page(params[:page]).per_page(2)
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
    @answers = @question.answers.all
  end

  def new
    @question = Question.new
  end

  def edit
    @question = Question.find(params[:question_id])
    @answer = Answer.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update_attributes(question_params)
        redirect_to question_path(@question)
    else
        redirect_to question_path(@question)
    end

  end

  def destroy
    @question = Question.find(params[:id])
    if @question.present?
      @question.destroy
    end
    redirect_to questions_path
  end

  def create
    @question = Question.new(question_params)
    @question.user = current_user

    if @question.save
      redirect_to question_path(@question)
    else
      redirect_to root_path
    end
  end


  private

  def question_params
    params.require(:question).permit(:title, :description, :department_id, :verified_answer)
  end

  def answer_params
    params.require(:answer).permit(:answer)
  end
end
