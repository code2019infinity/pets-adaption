class AddUserToAnimal < ActiveRecord::Migration[5.2]
  def change
    add_reference :animals, :user, foreign_key: true
  end
end
