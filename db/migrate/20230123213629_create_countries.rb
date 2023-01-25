class CreateCountries < ActiveRecord::Migration[7.0]
  def change
    create_table :countries do |t|
      t.text :name, null: false, unique: true

      t.timestamps
    end

    add_index :countries, :name
  end
end
