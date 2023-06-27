class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.string :name
      t.string :category
      t.text :description
      t.text :content
      t.float :price
      t.integer :grade

      t.timestamps
    end
  end
end
