class CreateTanks < ActiveRecord::Migration
  def change
    create_table :tanks do |t|
      t.references :gasstation, index: true

      t.timestamps
    end
  end
end
