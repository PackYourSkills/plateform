module ImagesHelper

  def packer_avatar_path
    current_user.packer.profile_photo.present? ? current_user.packer.profile_photo.path : ''
  end

end
