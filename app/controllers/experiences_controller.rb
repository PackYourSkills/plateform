  class ExperiencesController < ApplicationController



   def new
      @experience = Experience.new
      @packer = Packer.find(params[:packer_id])
   end


    def create
      @packer = Packer.find(params[:packer_id])
      @experience = @packer.experiences.new(experience_params)
      if @experience.save
        redirect_to packer_path @packer
      else
        render :new
      end
    end



    def edit
      @packer = Packer.find(params[:packer_id])
      @experience = Experience.find (params[:id])
    end


    def update
      @packer = Packer.find(params[:packer_id])
      @experience = Experience.find(params[:id])
      @experience.update_attributes(experience_params)
      if @experience.save
        redirect_to packer_path @packer
      else
        render :edit
      end

    end

    def experience_params
      params.require(:experience).permit(:type_of_exp, :start_time, :end_time, :organisation, :position, :description)
    end


  end


