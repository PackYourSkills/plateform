class CrewsController < ApplicationController

  before_action :set_crew, only: [ :edit, :update, :show, :destroy ]

  def edit
  end

  def update
    @crew.update(crew_params)
    redirect_to root_path @crew
  end

  def show
  end

  def destroy
    @crew.destroy
    redirect_to root_path
  end

  private

  def set_crew
    @crew = Crew.find (params[:id])
  end

  def crew_params
    params.require(:crew).permit(:name, :city, :country, :address,
      :social_issue, :mission, :creation_date, :description,
      :nb_collaborators, :team_description, :phone, :skype, :twitter, :website,
      :values, :credit_count, :email)
  end
end
