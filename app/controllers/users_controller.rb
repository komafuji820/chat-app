class UsersController < ApplicationController
  def edit
  end

  def update
    if User.update(user_params) #current_user?#
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email)
  end
end
