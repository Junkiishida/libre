class AddHomeTownToBaskets < ActiveRecord::Migration[5.2]
  def change
    add_column :baskets, :home_town, :string
  end
end
