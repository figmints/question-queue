class RegistrationsController < Devise::RegistrationsController

  def new
    @user = User.new
    @user.build_department
  end

  def create

    @user = User.new(user_params)
    # @user.save
    # broken feature will look into sign-up redirect to user logged in
    # redirect_to root_path
    # @user = current_user.users_build(user_params)

    if @user.save
      flash[:success] = "User created!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, department_attributes: [:name])
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password)
  end
end
