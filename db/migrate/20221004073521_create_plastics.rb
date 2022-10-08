class CreatePlastics < ActiveRecord::Migration[7.0]
  def change
    create_table :plastics do |t|
      t.string :name  
      t.string :mold1
      t.integer :mold1_cavity
      t.decimal :mold1_weight
      t.integer :mold1_speed
      t.string :mold2
      t.integer :mold2_cavity
      t.decimal :mold2_weight
      t.integer :mold2_speed
      t.string :description
      t.timestamps
    end
  end
end
