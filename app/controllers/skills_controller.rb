class SkillsController < ApplicationController

  before_action :set_skill, only: [ :show, :edit, :destroy, :update ]
  before_action :set_packer, only: [ :new, :create, :edit, :update, :destroy ]

  def index
    @skills = policy_scope(Skill)
  end

  def new
    @skill = Skill.new
    authorize @skill
  end

  def create
    @skill = @packer.skills.build(skill_params)
    authorize @skill
    @skill.save ? (redirect_to packer_path @packer) : (render :new)
  end

  def edit
  end

  def update
    @skill.update(skill_params)
    @skill.save ? (redirect_to packer_path @packer) : (render :edit)
  end

  def destroy
    @skill.destroy
    redirect_to packer_path
  end

  private

  def set_packer
    @packer = Packer.find(current_user.packer)
  end

  def set_skill
    @skill = Skill.find (params[:id])
    authorize @skill
  end

  def skill_params
    params.require(:skill).permit(:title, :level, :type_of_skill)
  end
end
