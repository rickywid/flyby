class ChangeLocationAddressDatatypeToText < ActiveRecord::Migration
  def change
	change_column :locations, :address, :text
  end
end
