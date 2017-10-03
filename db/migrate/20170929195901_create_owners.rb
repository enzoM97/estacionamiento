class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :name
      t.string :last_name
      t.string :address
      t.references :owner_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
