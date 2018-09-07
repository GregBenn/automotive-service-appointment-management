class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.integer :phone_number, null: false

      t.timestamps null: false
    end
  end
end
