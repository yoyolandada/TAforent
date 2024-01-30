class CreateOffers < ActiveRecord::Migration[7.1]
  def change
    create_table :offers do |t|
      t.string :specialty
      t.integer :price
      t.boolean :available
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
