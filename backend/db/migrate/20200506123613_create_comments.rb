class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :user_id, null: false
      t.integer :lesson_id, null: false

      t.timestamps
    end
    add_foreign_key :comments, :users
    add_foreign_key :comments, :lessons
  end
end
