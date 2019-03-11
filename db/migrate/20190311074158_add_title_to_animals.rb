class AddTitleToAnimals < ActiveRecord::Migration[5.2]
  def change
    add_column :animals, :title, :string
  end
end
