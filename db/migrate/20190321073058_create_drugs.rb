class CreateDrugs < ActiveRecord::Migration[5.2]
  def change
    create_table :drugs do |t|
      t.string :name
      t.string :formula
      t.string :hazard
      t.integer :overdose
      t.timestamps
    end
  end
end
