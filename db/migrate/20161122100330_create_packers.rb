class CreatePackers < ActiveRecord::Migration[5.0]
  def change
    create_table :packers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :sexe
      t.integer :age
      t.string :city
      t.string :country
      t.string :nationality
      t.string :phone
      t.string :skype
      t.text :story
      t.string :youtube_link
      t.string :website
      t.string :cv_link

      t.timestamps
    end
  end
end
