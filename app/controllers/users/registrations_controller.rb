class Users::RegistrationsController < Devise::RegistrationsController

  def create
    build_resource(sign_up_params)
    resource[:role] = params['user']['role']
    resource.save
    yield resource if block_given?
    if resource.persisted?
      if resource.active_for_authentication?
        if resource.crew?
          @crew = resource.build_crew
          if @crew.save
            set_flash_message! :notice, :signed_up
            sign_up(resource_name, resource)
            respond_with resource, location: after_sign_up_path_for(resource)
          else
            resource.destroy
            flash[:alert] = "registration error ! contact Maxime at
            maxime@packyourskills.com and say ERROR 666 :)"
            redirect_to :back
          end
        else
          @packer = resource.build_packer
          if @packer.save
            set_flash_message! :notice, :signed_up
            sign_up(resource_name, resource)
            respond_with resource, location: after_sign_up_path_for(resource)
          else
            resource.destroy
            flash[:alert] = "registration error ! contact Maxime at
            maxime@packyourskills.com and say ERROR 666 :)"
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
    resource.crew? ? (deck_crew_path(resource.crew)) : (deck_packer_path(resource.packer))
  end

  def after_inactive_sign_up_path_for(resource)
    resource.crew? ? (deck_crew_path(resource.crew)) : (deck_packer_path(resource.packer))
  end
end

