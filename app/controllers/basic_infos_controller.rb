class BasicInfosController < ApplicationController

  def packer
    @user = current_user
  end

  def update
    current_user.update(params)
    redirect_to root
  end

  private

  def params
    params.require(:user).permit(:first_name, :last_name, :email)
  end
end
