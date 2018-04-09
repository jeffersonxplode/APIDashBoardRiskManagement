class CreateRiskDocs < ActiveRecord::Migration[5.1]
  def change
    create_table :risk_docs do |t|
      t.string :name
      t.text :description
      t.float :probability_of_happen
      t.float :impact
      t.text :treatment
      t.string :category
      t.float :severity
      t.string :severity_str
      t.string :residual_risk
      t.integer :occurrences

      t.timestamps
    end
  end
end
