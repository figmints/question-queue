class ProfilesController < ApplicationController
  before_action :authenticate_user!
  def new
    @user = User.find(params[:id])
    @profile = Profile.new
  end

  def index
    @profiles = Profile.all
    @profile = Profile.new
  end

  def show
    @user = User.find(params[:id])
    @department = Department.find(params[:id])
  end


end
