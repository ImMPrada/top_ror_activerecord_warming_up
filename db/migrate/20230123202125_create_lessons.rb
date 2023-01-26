class CreateLessons < ActiveRecord::Migration[7.0]
  def change
    create_table :lessons do |t|
      t.text :title, null: false
      t.text :description, null: false
      t.belongs_to :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
