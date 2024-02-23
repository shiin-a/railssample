class CreateHamsters < ActiveRecord::Migration[5.2]
  def change
    create_table :hamsters do |t|
      t.string :hamstername
      t.integer :high
      t.string :city

      t.timestamps
    end
  end
end
