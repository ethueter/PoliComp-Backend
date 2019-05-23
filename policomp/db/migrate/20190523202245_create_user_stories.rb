class CreateUserStories < ActiveRecord::Migration[5.2]
  def change
    create_table :user_stories do |t|
      t.integer :user_id
      t.integer :article_id
      t.boolean :favorite
      t.integer :rating
      t.boolean :visable

      t.timestamps
    end
  end
end
