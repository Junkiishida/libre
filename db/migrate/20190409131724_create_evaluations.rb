class CreateEvaluations < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluations do |t|
      t.integer :score
      t.string :comment
      t.references :basket, foreign_key: true

      t.timestamps
    end
  end
end
