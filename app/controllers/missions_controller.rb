class MissionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  before_action :set_mission, only: [ :show, :edit, :update, :destroy, :close, :suspend, :cancel ]
  before_action :set_crew, only: [ :create, :destroy ]
  before_action :set_list_skills, only: [ :index, :new, :edit ]
  before_action :set_urls, only: [:show]
  def index
    # info from the form
    radius = params['radius'].to_i
    address = params['address']
    # selection of the mission
    @all = policy_scope(Mission)
    @public_missions = @all.where(status: 'online')

    @missions = @public_missions.near(address, radius)

    @hash = Gmaps4rails.build_markers(@missions) do |mission, marker|
      marker.lat mission.latitude
      marker.lng mission.longitude
      # marker.infowindow render_to_string(partial: "/nests/map_box", locals: { nest: nest })
    end
  end

  def new
    @mission = Mission.new
    authorize @mission
  end

  def create
    @mission = @crew.missions.build(mission_params)
    params[:commit] == 'Publish' ? (@mission.status = 'online') : (@mission.status = 'draft')
    authorize @mission
    @mission.save ? (redirect_to mission_path @mission) : (render :new)
  end

  def show
    @editable = user_signed_in? ? (current_user == @mission.crew.user || current_user.admin) : false
    @url_cover = @mission.cover_picture.nil? ? 'http://res.cloudinary.com/pack-your-skills/image/upload/v1480073054/Website/Home%20Page/Banner_PackyourSkills.jpg' : @mission.cover_picture.path
    @url_hosting = @mission.hosting_picture.nil? ? '/no_hosting_picture.jpg' : @mission.hosting_picture.path

    @url_logo =
    if @mission.crew.logo.nil?
      if @mission.crew.name.nil?
        @url_logo = "https://dummyimage.com/400x400/EC605F/2d221f.png&text=AA"
      else
        @url_logo = "https://dummyimage.com/400x400/EC605F/2d221f.png&text=#{@mission.crew.name.chars.first}"
      end
    else
      @mission.crew.logo.path
    end


    @hash = Gmaps4rails.build_markers(@mission) do |mission, marker|
      marker.lat mission.latitude
      marker.lng mission.longitude
      # marker.infowindow render_to_string(partial: "/nests/map_box", locals: { nest: nest })
    end
  end

  def edit
  end

  def update
    params[:commit] == 'Publish' ? (@mission.status = 'online') : (@mission.status = 'draft')
    @mission.update(mission_params) ? (redirect_to mission_path @mission) : (render :edit)
  end

  def close
    @mission.close
    redirect_to mission_path @mission
  end

  def cancel
    @mission.cancel
    redirect_to mission_path @mission
  end

  def suspend
    @mission.suspend
    redirect_to mission_path @mission
  end

  def destroy
    @mission.destroy
    redirect_to authenticated_root_path @crew
  end

  private

  def set_urls
    @url_cover = @mission.cover_picture.nil? ? 'http://res.cloudinary.com/pack-your-skills/image/upload/v1480073054/Website/Home%20Page/Banner_PackyourSkills.jpg' : @mission.cover_picture.path
    @url_hosting = @mission.hosting_picture.nil? ? '/no_hosting_picture.jpg' : @mission.hosting_picture.path
    if @mission.crew.name.nil?
      @url_logo = @mission.crew.logo.nil? ? "https://dummyimage.com/400x400/EC605F/2d221f.png&text=AA : @mission.crew.logo.path" : @mission.crew.logo.path
    else
      @url_logo = @mission.crew.logo.nil? ? "https://dummyimage.com/400x400/EC605F/2d221f.png&text=#{@mission.crew.name.chars.first}" : @mission.crew.logo.path
    end
  end

  def set_list_skills
    db_constants = YAML.load_file(Rails.root.join('config', 'constants.yml'))
    @list = db_constants['skills'].keys
  end

  def set_mission
    @mission = Mission.find(params[:id])
    authorize @mission
  end

  def set_crew
    @crew = Crew.find(current_user.crew)
  end

  def mission_params
    params.require(:mission).permit(:title, :city, :country, :address, :duration, :skill,
      :description, :hours_per_day, :days_per_week, :hosting_condition, :food, :latitude, :longitude,
      :other_comment, :language, :cover_picture, :hosting_picture, mission_photos: [])
  end
end
