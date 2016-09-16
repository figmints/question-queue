class AnswersController < ApplicationController

  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = Answer.new(answer_params)
    @answer.question_id = @question.id
    @answer.user = current_user

    if @answer.save
      redirect_to question_path(@question)
    else
      redirect_to root_path
    end
  end

  def edit
    @question = Question.find(params[:question_id])
    @answer = Answer.find(params[:id])
  end

  def update
    @question = Question.find(params[:question_id])
    @answer = Answer.find(params[:id])
    @answer.update(answer_params)
    if @answer.update_attributes(answer_params)
        redirect_to question_path(@question)
    else
        redirect_to question_path(@question)
    end
  end

  def destroy
    @question = Question.find(params[:question_id])
    @answer = Answer.find(params[:id])
    @answer.destroy
    flash[:success] = "Answer Deleted forever!"
    redirect_to question_path(@question)
  end

  protected

  def answer_params
    params.require(:answer).permit(:answer)
  end

end
