class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :type
      t.text :description
      t.string :location
      t.boolean :adapted

      t.timestamps
    end
  end
end
