class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.integer :low_grade
      t.integer :high_grade

      t.timestamps null: false
    end
  end
end
