class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :name, null: false
      t.string :gender, null: false
      t.string :height
      t.string :activity_level
      t.string :eye_color
      t.string :hair_color
      t.string :ethnicity
      t.text :interest
      t.timestamps
    end
  end
end
