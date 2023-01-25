class CreateCities < ActiveRecord::Migration[7.0]
  def change
    create_table :cities do |t|
      t.text :name, null: false, unique: true
      t.belongs_to :state, null: false, foreign_key: true

      t.timestamps
    end

    add_index :cities, :name
  end
end
