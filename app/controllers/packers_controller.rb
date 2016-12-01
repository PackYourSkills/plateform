class PackersController < ApplicationController

  before_action :set_packer, only: [ :edit, :update, :show ]
  before_action :set_picture_url, only: [ :show, :deck ]
  before_action :set_list, only: [:show]
  before_action :set_editable, only: [:show]

  def index
    @packers = policy_scope(Packer)
  end

  def edit
  end

  def update
    @packer.update(packer_params)
    @packer.save ? (redirect_to packer_path @packer) : (render :edit)
  end

  def show
    @editable = user_signed_in? ? (current_user == @packer.user || current_user.admin) : false
    @db_skills = @db_constants['skills']
  end

private

  def set_editable
    @editable = user_signed_in? ? (current_user == @packer.user || current_user.admin) : false
  end

  def set_picture_url
    if @packer.profile_photo.nil?
      @profile_picture_url = "https://dummyimage.com/400x400/4EB8BA/2d221f.png&text=#{@packer.user.first_name.chars.first}"
    else
      @profile_picture_url = @packer.profile_photo.path
    end
  end

  def packer_params
    params.require(:packer).permit(:cv_link, :website, :youtube_link,
      :skype, :phone, :nationality, :sexe, :profile_photo, :cover_picture,
      :value1, :value2, :value3, :quote, :quote_author)
  end

  def set_packer
    @packer = Packer.find(params[:id])
    authorize @packer
  end

  def set_list
    @db_constants = YAML.load_file(Rails.root.join('config', 'constants.yml'))
    @list = @db_constants['skills'].keys
    @pro_level = @db_constants['professionnal_level']
    @lang_level = @db_constants['language_level']
  end
end
