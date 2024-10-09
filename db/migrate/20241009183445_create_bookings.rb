class CreateBookings < ActiveRecord::Migration[7.2]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :chair, null: false, foreign_key: true
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.string :status, default: "pending"

      t.timestamps
    end
  end
end
