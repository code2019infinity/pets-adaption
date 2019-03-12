class AddAnimalToComment < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :animal, foreign_key: true
  end
end
