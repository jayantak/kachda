class FixColumnName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :bins, :lat, :latitude
  	rename_column :bins, :long, :longitude
  end
end
