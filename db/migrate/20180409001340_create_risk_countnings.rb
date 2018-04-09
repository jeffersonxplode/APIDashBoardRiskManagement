class CreateRiskCountnings < ActiveRecord::Migration[5.1]
  def change
    create_table :risk_countnings do |t|

      t.timestamps
    end
  end
end
