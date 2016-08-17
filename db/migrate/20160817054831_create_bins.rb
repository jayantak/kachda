class CreateBins < ActiveRecord::Migration[5.0]
  def change
    create_table :bins do |t|
      t.string :sim
      t.decimal :lat
      t.decimal :long
      t.string :status

      t.timestamps
    end
  end
end
