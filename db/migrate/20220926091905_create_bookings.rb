class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :starts_at
      t.date :ends_at
      t.integer :adult
      t.boolean :child
      t.boolean :baby
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.references :user, null: false, foreign_key: true
      t.references :room, null: false, foreign_key: true

      t.timestamps
    end
  end
end
