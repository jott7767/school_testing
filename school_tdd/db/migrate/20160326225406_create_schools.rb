class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name, null: false
      t.integer :low_grade, null: false
      t.integer :high_grade, null: false

      t.timestamps null: false
    end
  end
end
