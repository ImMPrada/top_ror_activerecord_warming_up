class AddBirthdateToProfiles < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles, :birthdate, :date, options: { null: false }
  end
end
