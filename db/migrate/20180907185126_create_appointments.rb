# frozen_string_literal: true

class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.belongs_to :vehicle, foreign_key: true, null: false
      t.belongs_to :user, foreign_key: true, null: false
      t.date :scheduled_for, null: false
      t.string :status, null: false

      t.timestamps null: false
    end
  end
end
