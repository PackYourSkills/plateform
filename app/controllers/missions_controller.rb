class MissionsController < ApplicationController

  before_action :set_mission, only: [ :show, :edit, :update, :destroy ]
  before_action :set_crew, only: [ :edit, :create, :destroy ]

  def index
    @missions = policy_scope(Mission)
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
