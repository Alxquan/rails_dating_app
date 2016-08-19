class AddAgeToPerson < ActiveRecord::Migration[5.0]
  def change
    add_column :people, :age, :integer, null: false
  end
end
