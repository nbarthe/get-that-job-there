class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.datetime :schedule_at
      t.string :payment_status, default: "not paid"
      t.integer :duration, null: false
      t.integer :user_id, null: false
      t.integer :coach_id, null: false

      t.timestamps
    end
  end
end
