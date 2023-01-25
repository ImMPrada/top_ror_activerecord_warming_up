class CreateStates < ActiveRecord::Migration[7.0]
  def change
    create_table :states do |t|
      t.text :name, null: false, unique: true
      t.belongs_to :country, null: false, foreign_key: true

      t.timestamps
    end

    add_index :states, :name
  end
end
