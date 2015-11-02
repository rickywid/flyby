class RenameDateToDateStart < ActiveRecord::Migration
  def change
	rename_column :destinations, :date, :start_date
	add_column :destinations, :end_date, :date
  
  end
end
