class AddTeamMateToBaskets < ActiveRecord::Migration[5.2]
  def change
    add_column :baskets, :team_mate, :string
  end
end
