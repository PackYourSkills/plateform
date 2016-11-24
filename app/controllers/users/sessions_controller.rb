class Users::SessionsController < Devise::SessionsController

  def new
    super
  end

  def create
    self.resource = warden.authenticate(auth_options)
    if self.resource
      set_flash_message!(:notice, :signed_in)
      sign_in(resource_name, resource)
      yield resource if block_given?
      respond_with resource, location: after_sign_in_path_for(resource)
    else
      flash[:alert] = "invalid email or password"
      redirect_to :back
    end
  end

  def update
    super
  end

  private

  def after_sign_in_path_for(resource)
    resource.crew? ? (deck_crew_path(resource.crew)) : (deck_packer_path(resource.packer))
  end
end
