class CreateMachineRapports < ActiveRecord::Migration[7.1]
  def change
    create_table :machine_rapports do |t|
      t.date :date
      t.integer :oil_level
      t.integer :water_level
      t.integer :sand_level
      t.string :review
      t.date :date_bcc
      t.date :date_extincteur
      t.references :machine, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
