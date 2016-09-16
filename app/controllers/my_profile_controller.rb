class MyProfileController < ApplicationController
  before_action :authenticate_user!
  def show
    @user = current_user
    binding.pry
  end

end
