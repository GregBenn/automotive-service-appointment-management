class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.integer :year, null: false
      t.string :make, null: false
      t.string :model, null: false
      t.integer :mileage, null: false
      t.belongs_to :customer, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
