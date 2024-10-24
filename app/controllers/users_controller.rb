class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(users_params)

    @user.active = true
    @user.approved = true
    @user.confirmed = true

    if @user.save
      flash[:success] = 'Conta registrada!'
      redirect_back_or_default root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def users_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
