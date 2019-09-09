class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.datetime :schedule_at
      t.string :payment_status
      t.integer :duration
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
