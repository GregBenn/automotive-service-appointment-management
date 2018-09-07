class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.integer :year
      t.string :make
      t.string :model
      t.integer :mileage
      t.belongs_to :customer, foreign_key: true

      t.timestamps null: false
    end
  end
end
