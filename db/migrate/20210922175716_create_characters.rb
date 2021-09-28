class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :race
      t.string :alignment
      t.string :background
      t.string :klass
      t.integer :level
      t.integer :weapon_id
    end 
  end
end
