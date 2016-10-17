class MyProfileController < ApplicationController
  before_action :authenticate_user!
  def show
    @user = current_user
    # @department = @user.departments
    # @department = current_user.departments
  end

end
