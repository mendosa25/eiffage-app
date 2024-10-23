class CreateMachines < ActiveRecord::Migration[7.1]
  def change
    create_table :machines do |t|
      t.integer :identification
      t.integer :model
      t.string :weight
      t.string :size
      t.timestamps
    end
  end
end
