class InfosController < ApplicationController
 skip_after_action :verify_authorized

  def edit
    @user = User.find(params[:user])
  end

  def update
    @user = User.find(params[:format])
    @user.update(params_packer)
    redirect_to packer_path(@user.packer)
  end

  private

  def params_packer
    params.require(:user).permit(:first_name, :last_name, :story, :address, :city, :zip_code, :country, :birthdate)
  end
end
