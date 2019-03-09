class AddRecentPointIdToPoints < ActiveRecord::Migration[5.2]
  def change
    add_column :points, :recent_point_id, :integer, index: true
  end
end
