class InfosController < ApplicationController
 skip_after_action :verify_authorized
  def edit
    @user = current_user
  end

  def update
    current_user.update(params_packer)
    redirect_to root
  end

  private

  def params_packer
    params.require(:user).permit(:first_name, :last_name, :email)
  end
end
