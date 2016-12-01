class AddYoutubeToCrews < ActiveRecord::Migration[5.0]
  def change
    add_column :crews, :youtube_link, :string
  end
end
