class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
     rename_column :animals, :type , :category
  end
end
