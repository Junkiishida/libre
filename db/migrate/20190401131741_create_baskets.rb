class CreateBaskets < ActiveRecord::Migration[5.2]
  def change
    create_table :baskets do |t|
      t.string :name
      t.string :position
      t.string :nationality

      t.timestamps
    end
  end
end
