class EducationsController < ApplicationController

  before_action :set_education, only: [ :show, :edit, :destroy, :update ]
  before_action :set_packer, only: [ :new, :create, :edit, :update, :destroy ]

  def index
    @educations = policy_scope(Education)
  end

  def new
    @education = Education.new
    authorize @education
  end

  def create
    @education = @packer.build_education(education_params)
    authorize @education
    @education.save ? (redirect_to packer_path @packer) : (render :new)
  end

  def edit
  end

  def update
    @education.update_attributes(education_params)
    @education.save ? (redirect_to packer_path @packer) : (render :edit)
  end

  def destroy
    @education.destroy
    redirect_to packer_path @packer
  end

  private

  def set_packer
    @packer = Packer.find(current_user.packer)
  end

  def set_education
    @education = Education.find (params[:id])
    authorize @education
  end
  def education_params
    params.require(:education).permit(:description)
  end
end
