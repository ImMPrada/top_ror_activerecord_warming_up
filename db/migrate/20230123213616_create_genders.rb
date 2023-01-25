class CreateGenders < ActiveRecord::Migration[7.0]
  def change
    create_table :genders do |t|
      t.text :label, null: false, unique: true

      t.timestamps
    end

    add_index :genders, :label
  end
end
