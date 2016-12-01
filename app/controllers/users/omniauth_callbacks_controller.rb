class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    user = User.find_for_facebook_oauth(request.env['omniauth.auth'])

    if user.persisted?
      # sign_in_and_redirect user, event: :authentication
      sign_in(user)
      set_flash_message(:notice, :success, kind: 'Facebook') if is_navigational_format?
      redirect_to after_sign_in_path_for(user)
    else
      session['devise.facebook_data'] = request.env['omniauth.auth']
      redirect_to new_user_registration_url
    end
  end

  private

  def after_sign_in_path_for(user)
    authenticated_root_path
  end
end
