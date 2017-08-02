class MyProfile::ProfileQuestionsController < ApplicationController

  layout "profile"

  def index
    @user = current_user
    @question = Question.all
    @question_false = @user.questions.where.not(verified_answer: true).page(params[:page]).per_page(1)
    @question_true = @user.questions.where(verified_answer: true).page(params[:pages]).per_page(1)

  end
end
