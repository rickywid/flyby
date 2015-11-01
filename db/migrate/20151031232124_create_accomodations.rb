class CreateAccomodations < ActiveRecord::Migration
  def change
    create_table :accomodations do |t|
      t.string :name
      t.text :address
      t.references :destination, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
