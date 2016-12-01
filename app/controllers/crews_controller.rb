class CrewsController < ApplicationController

  before_action :set_crew, only: [ :edit, :update, :show, :destroy, :deck ]
  before_action :set_editable, only: [ :show ]
  before_action :set_url_photos, only: [ :show ]
  before_action :set_list, only: [ :new, :edit ]


  def index
    @crews = policy_scope(Crew)
  end

  def edit
  end

  def update
    @crew.update(crew_params)
    @crew.save ? (redirect_to crew_path(@crew)) : (render :edit)
  end

  def show
  end

  private

  def set_list
    db_constants = YAML.load_file(Rails.root.join('config', 'constants.yml'))
    @list = db_constants['social_issues'].keys
  end

  def set_editable
    @editable = user_signed_in? ? (current_user == @crew.user || current_user.admin) : false
  end

  def set_url_photos
    @url_logo = @crew.logo.nil? ? 'logo.png' : @crew.logo.path
  end

  def set_crew
    @crew = Crew.find(params[:id])
    authorize @crew
  end

  def crew_params
    params.require(:crew).permit(:name, :story,
      :address, :country, :city, :zip_code, :latitude, :longitude,
      :social_issue, :mission, :creation_date,
      :nb_collaborators, :team_description,
      :phone, :skype, :twitter, :facebook, :website, :youtube_link,
      :value1, :value2, :value3, :quote, :quote_author,
      :credit_count, :logo, :cover_picture, crew_photos: [])
  end
end
