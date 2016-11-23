class Users::RegistrationsController < Devise::RegistrationsController

  def create
    build_resource(sign_up_params)
    resource['role'] = params['user']['role']
    resource.save
    yield resource if block_given?
    if resource.persisted?
      if resource.active_for_authentication?
        if resource.role == "crew"
          @crew = resource.build_crew(crew_params)
          if @crew.save
            set_flash_message! :notice, :signed_up
            sign_up(resource_name, resource)
            respond_with resource, location: after_sign_up_path_for(resource)
          else
            resource.destroy
            flash[:alert] = "registration error ! Please contact Maxime at
            maxime@packyourskills.com and say, hey error 666"
            redirect_to :back
          end
        else
          @packer = resource.build_packer(packer_params)
          if @packer.save
            set_flash_message! :notice, :signed_up
            sign_up(resource_name, resource)
            respond_with resource, location: after_sign_up_path_for(resource)
          else
            resource.destroy
            flash[:alert] = "registration error ! Please contact Maxime at
            maxime@packyourskills.com and say, hey error 666"
            redirect_to :back
          end
        end
      else
        set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"
        expire_data_after_sign_in!
        respond_with resource, location: after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      set_minimum_password_length
      flash[:alert] = resource.errors.full_messages
      redirect_to :back
    end
  end

private

  def after_sign_up_path_for(resource)
    if resource.role == "crew"
      deck_crew_path(resource.crew)
    else
      deck_packer_path(resource.packer)
    end
  end

  def after_inactive_sign_up_path_for(resource)
    if resource.role == "crew"
      deck_crew_path(resource.crew)
    else
      deck_packer_path(resource.packer)
    end
  end

  def crew_params
    params.require(:user).permit(:email)
  end

  def packer_params
    params.require(:user).permit(:email, :first_name, :last_name)
  end
end

## :email, :facebook_picture_url, :token, :token_expiry, :first_name, :last_name, :role



    # @user = User.new(user_params)

    # if @user.save

    #   if @user.role == "crew"

    #     @crew = @user.build_crew(crew_params)
    #     if @crew.save
    #       sign_in @user
    #       redirect_to deck_crew_path @crew
    #     else
    #       @user.destroy
    #       params['role'] = @user.role
    #       render :new
    #     end

    #   else

    #     @packer = @user.build_packer(packer_params)
    #     if @packer.save
    #       sign_in @user
    #       redirect_to deck_packer_path @packer
    #     else
    #       @user.destroy
    #       params['role'] = @user.role
    #       render :new
    #     end

    #   end

    # else
    #   params['role'] = @user.role
    #   render :new
    # end
