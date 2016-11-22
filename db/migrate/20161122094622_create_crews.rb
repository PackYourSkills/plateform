class CreateCrews < ActiveRecord::Migration[5.0]
  def change
    create_table :crews do |t|
      t.string :name
      t.string :city
      t.string :country
      t.string :address
      t.string :social_issue
      t.string :mission
      t.date :creation_date
      t.text :description
      t.integer :nb_collaborators
      t.text :team_description
      t.string :phone
      t.string :skype
      t.string :twitter
      t.string :facebook
      t.string :website
      t.text :values
      t.integer :credit_count

      t.timestamps
    end
  end
end
