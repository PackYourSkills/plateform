class SkillsController < ApplicationController

  before_action :set_skill, only: [ :show, :edit, :destroy, :update ]
  before_action :set_packer, only: [ :new, :create, :edit, :update, :destroy ]

  def index
    @skills = Skill.all
  end

  def new
    @skill = Skill.new
  end

  def create
    @skill = @packer.skills.build(skill_params)
    if @skill.save
      redirect_to packer_path(@packer)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @skill.update(skill_params)
    redirect_to packer_path @packer
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
  end

  def skill_params
    params.require(:skill).permit(:title, :level, :type_of_skill)
  end

end
