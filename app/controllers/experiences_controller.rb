class ExperiencesController < ApplicationController

  before_action :set_experience, only: [ :show, :edit, :destroy, :update ]
  before_action :set_packer, only: [ :new, :create, :edit, :update, :destroy ]

  def index
    @experiences = policy_scope(Experience)
  end

  def new
    @experience = Experience.new
    authorize @experience
  end

  def create
    @experience = @packer.experiences.new(experience_params)
    authorize @experience
    @experience.save ? redirect_to packer_path @packer | render :new
  end

  def edit
  end

  def update
    @experience.update_attributes(experience_params)
    @experience.save ? redirect_to packer_path @packer | render :edit
  end

  def destroy
    @experience.destroy
    redirect_to packer_path @packer
  end

  private

  def set_packer
    @packer = Packer.find(current_user.packer)
  end

  def set_experience
    @experience = Experience.find (params[:id])
    authorize @experience
  end
  def experience_params
    params.require(:experience).permit(:type_of_exp, :start_time, :end_time, :organisation, :position, :description)
  end
end
