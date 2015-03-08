class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.references :faculty, index: true

      t.timestamps null: false
    end
    add_foreign_key :students, :faculties
  end
end
