class CreateGarbagebins < ActiveRecord::Migration[5.0]
  def change
    create_table :garbagebins do |t|
      t.string :sim
      t.decimal :latitude
      t.decimal :longitude
      t.string :status

      t.timestamps
    end
  end
end
