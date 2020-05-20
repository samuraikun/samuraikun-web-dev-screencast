class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :nick_name
      t.string :profile_thumbnail_url
      t.integer :country_id

      t.timestamps
    end
  end
end
