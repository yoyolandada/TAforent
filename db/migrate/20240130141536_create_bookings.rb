class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.date :date
      t.integer :confirmation
      t.references :users, null: false, foreign_key: true
      t.references :offers, null: false, foreign_key: true

      t.timestamps
    end
  end
end
