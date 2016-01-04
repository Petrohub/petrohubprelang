class CreateGasstations < ActiveRecord::Migration
  def change
    create_table :gasstations do |t|
      t.references :retailer, index: true

      t.timestamps
    end
  end
end
