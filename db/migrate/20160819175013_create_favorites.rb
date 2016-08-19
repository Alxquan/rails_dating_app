class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.text :likes
      t.text :dislikes

      t.belongs_to :person

      t.timestamps
    end
  end
end
