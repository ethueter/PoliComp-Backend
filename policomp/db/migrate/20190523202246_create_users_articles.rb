class CreateUsersArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :users_articles do |t|
      t.integer :user_id
      t.integer :article_id
      t.boolean :favorite
      t.integer :rating
      t.boolean :visible

      t.timestamps
    end
  end
end
