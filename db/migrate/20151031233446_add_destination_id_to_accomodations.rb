class AddDestinationIdToAccomodations < ActiveRecord::Migration
  def change
    add_column :accomodations, :destinations_id, :integer
  end
end
