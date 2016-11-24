class MissionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  before_action :set_mission, only: [ :show, :edit, :update, :destroy ]
  before_action :set_crew, only: [ :edit, :create, :destroy ]

  def index
    @all = policy_scope(Mission)
    radius = params['radius'].to_i
    address = params['address']

    @missions = @all.near(address, radius)

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
    @mission = @crew.missions.new(mission_params)
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
    @mission.update(mission_params) ? (redirect_to mission_path @mission) : (render :edit)
  end

  def destroy
    @mission.destroy
    redirect_to deck_crew_path @crew
  end

  private

  def set_mission
    @mission = Mission.find(params[:id])
    authorize @mission
  end

  def set_crew
    @crew = Crew.find(current_user.crew)
  end

  def mission_params
    params.require(:mission).permit(:title, :city, :country, :address, :duration, :skill,
      :descritpion, :hours_per_day, :days_per_week, :hosting_condition, :food, :other_comment)
  end
end
