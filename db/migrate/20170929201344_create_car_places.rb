class CreateCarPlaces < ActiveRecord::Migration
  def change
    create_table :car_places do |t|
      t.time :hora_entrada
      t.time :hora_salida
      t.date :fecha_entrada
      t.date :fecha_salida
      t.references :car, index: true, foreign_key: true
      t.references :place, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
