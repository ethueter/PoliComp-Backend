class CreateSources < ActiveRecord::Migration[5.2]
  def change
    create_table :sources do |t|
      t.string :name
      t.string :source_url
      t.string :api_source_id

      t.timestamps
    end
  end
end
