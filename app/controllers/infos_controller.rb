class InfosController < ApplicationController
 skip_after_action :verify_authorized
  def edit
    @user = current_user
  end

  def update
    current_user.update(params_packer)
    redirect_to packer_path(current_user.packer)
  end

  private

  def params_packer
    params.require(:user).permit(:first_name, :last_name, :story, :address, :city, :zip_code, :country, :birthdate)
  end
end
