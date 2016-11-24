class CrewsController < ApplicationController

  before_action :set_crew, only: [ :edit, :update, :show, :destroy, :deck ]

  def index
    @crews = policy_scope(Crew)
  end

  def edit
  end

  def update
    @crew.update(crew_params)
    @crew.save ? (redirect_to root_path @crew) : (render :edit)
  end

  def show
  end

  def deck
    authorize @crew
  end

  private

  def set_crew
    @crew = Crew.find (params[:id])
    authorize @crew
  end

  def crew_params
    params.require(:crew).permit(:name,
      :social_issue, :mission, :creation_date,
      :nb_collaborators, :team_description,
      :phone, :skype, :twitter, :website,
      :values, :credit_count)
  end
end
