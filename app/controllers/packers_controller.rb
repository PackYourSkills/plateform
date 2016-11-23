class PackersController < ApplicationController

  before_action :set_packer, only: [ :edit, :update, :show ]

  def edit
  end

  def update
    if params[:packer]
      @packer.update(packer_params)
    end
    redirect_to packer_path @packer
  end

  def show
  end

private

  def packer_params
    params.require(:packer).permit( :cv_link, :website, :youtube_link,
      :story, :skype, :phone,
      :nationality, :country, :city, :age, :sexe)
  end

  def set_packer
    @packer = Packer.find (params[:id])
  end

end
