class AddAverageScoreToBaskets < ActiveRecord::Migration[5.2]
  def change
    add_column :baskets, :average_score, :integer
  end
end
