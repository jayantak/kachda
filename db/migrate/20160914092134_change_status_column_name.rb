class ChangeStatusColumnName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :bins, :status, :binStatus
  end
end
