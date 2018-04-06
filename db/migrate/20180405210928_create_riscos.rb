class CreateRiscos < ActiveRecord::Migration[5.1]
  def change
    create_table :riscos do |t|
      t.string :name
      t.text :description
      t.float :probability_of_happen
      t.float :impact
      t.float :severity
      t.string :treatment
      t.string :category
      t.text :residual_risk
      t.integer :occurences

      t.timestamps
    end
  end
end
