class Users::RegistrationsController < Devise::RegistrationsController

  def create
    @user = User.new(user_params)

    if @user.save

      if @user.role == "crew"

        @crew = @user.build_crew(crew_params)
        if @crew.save
          sign_in @user
          redirect_to crew_path @crew
        else
          @user.destroy
          params['role'] = @user.role
          render :new
        end

      else

        @packer = @user.build_packer(packer_params)
        if @packer.save
          sign_in @user
          redirect_to packer_path @packer
        else
          @user.destroy
          params['role'] = @user.role
          render :new
        end

      end

    else
      params['role'] = @user.role
      render :new
    end
  end


private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :role, :password)
  end

  def crew_params
    params.require(:user).permit(:email)
  end

  def packer_params
    params.require(:user).permit(:email, :first_name, :last_name)
  end
end

## :email, :facebook_picture_url, :token, :token_expiry, :first_name, :last_name, :role
