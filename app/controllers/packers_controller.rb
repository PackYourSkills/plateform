class PackersController < ApplicationController

  def show
    @packer = Packer.find(params[:id])
  end

  def update
    @packer = Packer.find(params[:id])
    if params[:packer]
      @packer.update(packer_params)
    end
    redirect_to packer_path
  end

  def edit
    @packer = Packer.find(params[:id])
  end

  def destroy
    @packer = Packer.find(params[:id])
    @packer.destroy
    session.clear
    flash[:notice] = "Le compte vient d'être supprimé."
    redirect_to logout_path
  end

private

  def packer_params
    params.require(:packer).permit(:first_name, :last_name, :email, :password, :cv_link, :website, :youtube_link, :story, :skype, :phone, :nationality, :country, :city, :age, :sexe)
  end
end
