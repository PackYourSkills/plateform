class MissionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  before_action :set_mission, only: [ :show, :edit, :update, :destroy, :close, :suspend, :cancel ]
  before_action :set_crew, only: [ :create, :destroy ]
  before_action :set_list_skills, only: [ :index, :new, :edit ]

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
    @mission.status = 'closed'
    @mission.save
    redirect_to mission_path @mission
  end

  def cancel
    @mission.status = 'canceled'
    @mission.save
    redirect_to mission_path @mission
  end

  def suspend
    @mission.status = 'suspended'
    @mission.save
    redirect_to mission_path @mission
  end

  def destroy
    @mission.destroy
    redirect_to deck_crew_path @crew
  end

  private

  def set_list_skills
    db_constants = YAML.load_file(Rails.root.join('config', 'constants.yml'))
    @list = db_constants['skills']
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
      :description, :hours_per_day, :days_per_week, :hosting_condition, :food,
      :other_comment, :cover_picture, :hosting_picture, mission_photos: [])
  end
end
