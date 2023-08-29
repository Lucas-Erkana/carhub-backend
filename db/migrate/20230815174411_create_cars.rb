class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.integer :year
      t.string :color
      t.string :plate_no
      t.integer :price
      t.string :photo
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
