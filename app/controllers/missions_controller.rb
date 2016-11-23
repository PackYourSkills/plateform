class MissionsController < ApplicationController

  before_action :set_mission, only: [ :show, :edit, :update ]
  before_action :set_crew, only: [ :create ]

  def new
    @mission = Mission.new
  end

  def create
    @mission = @crew.missions.build(mission_params)
    if @mission.save
      redirect_to mission_path(@mission)
    else
      render :new
    end
  end

  def index
    @missions = Mission.all
  end

  def show
  end

  def edit
  end

  def update
    @mission.update
    redirect_to mission_path (@mission)
  end

private

def set_mission
  @mission = Mission.find(params[:id])
end

def set_crew
  @crew = Crew.find(current_user.crew)
end

def mission_params
  params.require(:mission).permit(:title, :city, :country, :address, :duration, :skill,
    :descritpion, :hours_per_day, :days_per_week, :hosting_condition, :food, :other_comment)
end

end
