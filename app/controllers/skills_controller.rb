class SkillsController < ApplicationController

  before_action :set_skill, only: [ :show, :edit, :destroy, :update ]
  before_action :set_packer, only: [ :edit, :update ]
  before_action :set_list, only: [:new, :edit]

  def index
    @skills = policy_scope(Skill)
  end

  def new
    @packer = Packer.find(params[:packer_id])
    @skill = Skill.new
    authorize @skill
  end

  def create
    @packer = Packer.find(params[:packer_id])
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
    @packer = Packer.find(params[:packer_id])
    @skill.destroy
    redirect_to packer_path
  end

  private

  def set_list
    db_constants = YAML.load_file(Rails.root.join('config', 'constants.yml'))
    @list = db_constants['skills'].keys
    @pro_level = db_constants['professionnal_level']
    @lang_level = db_constants['language_level']
  end

  def set_packer
    @packer = @skill.packer
  end

  def set_skill
    @skill = Skill.find (params[:id])
    authorize @skill
  end

  def skill_params
    params.require(:skill).permit(:title, :level, :type_of_skill)
  end
end
