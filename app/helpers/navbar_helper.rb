module NavbarHelper

  def avatar
    picture = current_user.crew? ? current_user.crew.logo_url : current_user.packer.profile_photo_url
    cl_image_tag picture, class: "avatar dropdown-toggle", id: "navbar-wagon-menu", "data-toggle" => "dropdown"
  end

  def connected_user_label
    content_tag :div do
      content_tag :span, class: "welcome-message #{current_user.role}" do
        "#{t '.hello', default: 'Hello'} #{current_user.crew? ? 'Crew' : 'Packer'}"
      end
    end
  end

end
