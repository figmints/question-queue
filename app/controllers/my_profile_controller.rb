class MyProfileController < ApplicationController
  before_action :authenticate_user!
  def show
    @user = current_user
  end

  def question
    @user = current_user
  end

end
