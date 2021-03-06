class RegistrationsController < Devise::RegistrationsController

  def new
    @user = User.new
  end

  def create

    @user = User.new(user_params)
    # @user.save
    # broken feature will look into sign-up redirect to user logged in
    # redirect_to root_path
    # @user = current_user.users_build(user_params)
    if @user.save
      flash[:success] = "User created!"
      UserMailer.welcome_email(@user).deliver_later
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :department_id)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password)
  end
end
