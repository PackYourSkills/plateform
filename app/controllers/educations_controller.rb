
  class EducationsController < ApplicationController



   def new
      @education = Education.new
      @packer = Packer.find(params[:packer_id])
   end


    def create
      @packer = Packer.find(params[:packer_id])
      @education = @packer.educations.new(education_params)
      if @education.save
        redirect_to packer_path @packer
      else
        render :new
      end
    end


    def edit
      @packer = Packer.find(params[:packer_id])
      @education = Education.find(params[:id])
    end


def update
@packer = Packer.find(params[:packer_id])
@education = Education.find(params[:id])
@education.update_attributes(education_params)
if @education.save
        redirect_to packer_path @packer
      else
        render :edit
      end

end


    def education_params
      params.require(:education).permit(:school, :degree, :end_time, :field)
    end


  end



