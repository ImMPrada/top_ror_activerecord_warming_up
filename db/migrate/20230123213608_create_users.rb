class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :second_case_users do |t|
      t.text :email, null: false, unique: true
      t.date :birthdate, null: false

      t.timestamps
    end

    add_index :second_case_users, :email
  end
end
