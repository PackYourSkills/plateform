class Users::RegistrationsController < Devise::RegistrationsController

  def new
    super
  end

  def create
    @user = User.new(user_params)

    if @user.save
      if @user.role == "crew"
        @crew = Crew.new(crew_params)
        if @crew.save
          redirect_to crew_path @crew
        else
          render :new
        end

      else
        @packer = Packer.new(packer_params)

        if @packer.save
          redirect_to packer_path @packer
        else
          render :new
        end

      end

    else
      render :new
    end
  end

  def update
    super
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
