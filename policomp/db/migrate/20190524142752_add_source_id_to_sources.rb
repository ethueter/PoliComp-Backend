class AddSourceIdToSources < ActiveRecord::Migration[5.2]
  def change
    add_column :sources, :source_id, :string
  end
end
