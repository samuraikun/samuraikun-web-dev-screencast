class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :description
      t.integer :user_id, null: false
      t.string :video_url
      t.text :body

      t.timestamps
    end
    add_foreign_key :lessons, :users
  end
end
