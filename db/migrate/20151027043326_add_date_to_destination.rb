class AddDateToDestination < ActiveRecord::Migration
  def change
    add_column :destinations, :date, :date
  end
end
