class QuestionsController < ApplicationController

  def index
    @questions = Question.all
    # @question = Question.new
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
    params.require(:question).permit(:title, :description, :department_id)
  end

  def answer_params
    params.require(:answer).permit(:answer)
  end
end
