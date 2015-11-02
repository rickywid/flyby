class AddAdditionalNotesToAccomodations < ActiveRecord::Migration
  def change
    add_column :accomodations, :add_notes, :text
  end
end
