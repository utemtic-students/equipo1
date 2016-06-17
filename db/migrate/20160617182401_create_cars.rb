class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :tipo_de_carro
      t.string :marca
      t.integer :modelo

      t.timestamps null: false
    end
  end
end
