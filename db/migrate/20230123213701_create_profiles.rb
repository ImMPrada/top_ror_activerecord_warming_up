class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.text :username, null: false, unique: true
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :gender, null: false, foreign_key: true
      t.belongs_to :city, null: false, foreign_key: true

      t.timestamps
    end

    add_index :profiles, :username
  end
end
